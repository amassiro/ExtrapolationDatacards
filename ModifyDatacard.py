#!/usr/bin/python

######################################
# workaround to disable pyroot parser!
import sys
tmpargv = sys.argv
sys.argv = [ '-b','-n' ]
import ROOT
from ROOT import TFile, TH1F, TCanvas, gStyle, TLine
sys.argv = tmpargv
from optparse import OptionParser
######################################

import re
import os
import subprocess
import operator
from commands import getstatusoutput
from operator import itemgetter

import fnmatch

import math

######################################



# ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----

def ScaleDatacard (datacardname,xsecScale,scale,nuisancesScaling) :

    # open the datacard file

    print 'Opening original input datacard: ', datacardname
    lines = open (datacardname, 'r').read().split ('\n')
    #nametag = datacardname.split ('/')[-1].replace ('.txt', '')
    nametag = datacardname.split ('/')[-1]
    #thepath = datacardname.replace (nametag + '.txt', '')
    thepath = datacardname.replace (nametag, '')

    print "nametag = ",nametag
    print "thepath = ",thepath

    # read datacard and separate bin, sample, rate, ...

    systime = 0
    header = []
    binName = []
    longListBin = []   # the bin list just before systematics
    sampleName = []
    reducedsampleName = [] # remove duplicate!
    sampleRate = []
    observation = []
    systematics = []
    systematicsName = []
    longListRateIndex = []
    rootFiles = {}
    firstTimeBin = True
    firstTimeProcess = True
    for line in lines:
      if '---' in line : continue
      if systime == 0 :
        tempLine = line.split (' ') # fix for empty spaces!
        tempLine = filter(lambda a: a != '', tempLine)
        if len(tempLine) == 0 : continue #skip if empty

        if tempLine[0] == 'bin' and firstTimeBin:
          binName = line.split (' ')
          binName = filter(lambda a: a != 'bin', binName)
          binName = filter(lambda a: a != '', binName)
          firstTimeBin = False
        elif tempLine[0] == 'bin':
         longListBin.append(line)
        elif tempLine[0] == 'observation' :
          observation.append(line)
        elif tempLine[0] == 'process' and firstTimeProcess:
          sampleName = line.split (' ')
          sampleName = filter(lambda a: a != 'process', sampleName)
          sampleName = filter(lambda a: a != '', sampleName)
          firstTimeProcess = False
        elif tempLine[0] == 'process':
          longListRateIndex.append(line)
        elif tempLine[0] == 'rate' :
          systime = 1
          sampleRate = line.split (' ')
          sampleRate = filter(lambda a: a != 'rate', sampleRate)
          sampleRate = filter(lambda a: a != '', sampleRate)
        else :
          header.append (line)
          #   0   1                   2                                    3
          #shapes *               hwwof_1j_shape_7TeV            hwwof_1j.input_7TeV.root              histo_$PROCESS histo_$PROCESS_$SYSTEMATIC
          if tempLine[0] == 'shapes' :
            tempRootList = line.split (' ')
            tempRootList = filter(lambda a: a != '', tempRootList)
            if tempRootList[1] == '*' :
              rootFiles[tempRootList[2]] = tempRootList[3]
      else:
        systematics.append (line)
        systematicsName.append (line.split (' ')[0])

    # clean empty systematics
    systematics     = [elem for elem in systematics     if len (elem.split ()) > 0]
    systematicsName = [elem for elem in systematicsName if len (elem.split ()) > 0]

    #print "header          = ", header
    #print "binName         = ", binName
    #print "sampleName      = ", sampleName
    #print "sampleRate      = ", sampleRate
    #print "systematics     = ", systematics
    #print "systematicsName = ", systematicsName


    scaleFactor = {}
    if os.path.exists(xsecScale):
      handle = open(xsecScale,'r')
      exec(handle)
      handle.close()

    print "scaleFactor     = ", scaleFactor
    print "lumi scale      = ", scale

    # modify sample rate with scale and scaleFactor (sample dependent)
    newSampleRate = []
    numSample = 0
    for rate in sampleRate:
      additionalScale = 1.
      if sampleName[numSample] in scaleFactor :
         additionalScale = scaleFactor[ sampleName[numSample] ]
      numSample+=1
      newSampleRate.append(scale*additionalScale*float(rate))


    # remove duplicates in "sampleName"
    # used in scaling histograms in case of "matching"
    # and in case the same sample name is used in several "bin"
    # NB: the order is not preserved, but who cares!
    reducedsampleName = list(set(sampleName))

    # modify sample rate in root file!

    for rootFileBin in rootFiles:
      print "rootFile[", rootFileBin, "] = ",rootFiles[rootFileBin]
      # check if root file is present (the name must end with .root)
      matchfile = re.search(".root", rootFiles[rootFileBin])
      if not matchfile:
          continue
      rootFile = ROOT.TFile.Open(str(thepath)+"/"+str(rootFiles[rootFileBin]))

      # get the histograms
      histograms = {}
      for k in rootFile.GetListOfKeys():
        h = k.ReadObj()
        # only 1d histograms supported
        histoName = h.GetName()
        match = re.search("histo_", histoName)
        if not match:
          continue
        histograms[h.GetName()] = h
        #histograms[h.GetTitle()] = h

      # modify the histograms
      outFile = ROOT.TFile.Open(str(thepath)+"/"+str(rootFiles[rootFileBin]+".new.root"),'recreate')


      for histoName, histogram in histograms.iteritems():
        for sample in reducedsampleName:
          #print "histoName = ",histoName
          match  = re.search("histo_"+str(sample)+"_", histoName)
          match2 = bool("histo_"+str(sample) == histoName)
          if match or match2:
            additionalScale = 1.
            if sample in scaleFactor :
              additionalScale = scaleFactor[ sample ]
            globalScale = scale*additionalScale
            #if (sample == "Vg") :
              #print "iFile = ", rootFileBin, "  :: histoName = ",histoName, " --> ", "histo_",str(sample) , " --> ",match2, " or ", match , " globalScale = ", globalScale
            #histogram.Sumw2() # --> why is this needed?
            histogram.Scale(globalScale)
            #print "globalScale = ",globalScale

      # save new root file
      for n,h in histograms.iteritems():
        h.Write()
      outFile.Close()

      os.system ("mv "+str(thepath)+"/"+str(rootFiles[rootFileBin])+".new.root "+str(thepath)+"/"+str(rootFiles[rootFileBin]))
      print "mv "+str(thepath)+"/"+str(rootFiles[rootFileBin])+".new.root "+str(thepath)+"/"+str(rootFiles[rootFileBin])


    # write new datacard
    #filename = str(thepath) + '/' + str(nametag) + '.txt'
    filename = str(thepath) + '/' + str(nametag)
    f = open(filename, 'w')

    # header
    for line in header: f.write (line + '\n')

    f.write ("---------------------------------------------------   \n")
    # bin name
    f.write ("bin   ")
    for it in range (len (binName)) :
      f.write (binName[it] + '  ')
    f.write ("\n")

    # observation
    for it in range (len (observation)) :
      f.write (observation[it] + '\n')

    f.write ("---------------------------------------------------   \n")
    # long list of bin
    for it in range (len (longListBin)) :
      f.write (longListBin[it] + '\n')

    # process names (a.k.a. samples)
    f.write ("process   ")
    for it in range (len (sampleName)) :
      f.write (sampleName[it] + '  ')
    f.write ("\n")

    # long list of rate indexes
    for it in range (len (longListRateIndex)) :
      f.write (longListRateIndex[it] + '\n')


    # rate
    f.write ("rate   ")
    for it in range (len (newSampleRate)) :
      f.write (str(newSampleRate[it]) + '  ')
    f.write ("\n")


   # systematics
    f.write ("---------------------------------------------------   \n")
    for it in range (len (systematics)) :
      sampleSyst = []
      sampleSyst = systematics[it].split (' ')
      sampleSyst = filter(lambda a: a != '', sampleSyst)

      whatKindOfScale = None
      whatKindOfScaleAsymptotic = 0.0
      for nuisancesScalingName, nuisancesScalingValues in nuisancesScaling.iteritems():
        # check matching in name of nuisance
        matchSysName = re.search(nuisancesScalingName, systematicsName[it])
        if matchSysName != None :
          
          skip_this_one = False
          if 'veto' in nuisancesScalingValues.keys() :
            for list_of_nuisances_not_to_consider in nuisancesScalingValues['veto'] :
              if re.search(list_of_nuisances_not_to_consider, systematicsName[it]) :
                skip_this_one = True
              
          if not skip_this_one :    
            whatKindOfScale = nuisancesScalingValues['scale']
            if 'asymptotic' in nuisancesScalingValues.keys() :
              whatKindOfScaleAsymptotic = nuisancesScalingValues['asymptotic']
        

      # scale all nuisances if needed
      if whatKindOfScale != None :
        # lnN scaling
        if sampleSyst[1] == "lnN" :
          f.write (systematics[it] + '\n')
          #globalScale = 1.
          #for sample in sampleName:
            #matchSample  = re.search("_"+str(sample)+"_", systematicsName[it])
            #if matchSample:
              #additionalScale = 1.
            #if sample in scaleFactor :
              #additionalScale = scaleFactor[ sample ]
              #globalScale = scale*additionalScale
          #for itColumn in range (len (sampleSyst)) :
              #if itColumn!=0 and itColumn!=1 : # first two are name and lnN
                #if sampleSyst[itColumn] == "-" :
                  #f.write (sampleSyst[itColumn])
                  #f.write ("   ")
                #else :
                  #kvalue = float (sampleSyst[itColumn])
                  #kvalue -= 1.
                  #kvalue = kvalue / math.sqrt (globalScale)     # error scales as 1/sqrt(scale)
                  #f.write (str(kvalue+1.))
                  #f.write ("   ")
              #else :
                #f.write (sampleSyst[itColumn])
                #f.write ("   ")
          #f.write (' \n')
  
        elif sampleSyst[1] == "shape" :
          globalScale = 1.
          if whatKindOfScale == 'asLumi' :
            globalScale = 1. / scale

            if whatKindOfScaleAsymptotic != 0 :
               if scale > 1./whatKindOfScaleAsymptotic :
                 globalScale = whatKindOfScaleAsymptotic
              
          if whatKindOfScale == 'asSqrtLumi' :

            globalScale = 1. / math.sqrt(scale)

            if whatKindOfScaleAsymptotic != 0 :
               if math.sqrt(scale) > 1./whatKindOfScaleAsymptotic :
                 globalScale = whatKindOfScaleAsymptotic
    
         
          #print "globalScale = ", globalScale
           
          for itColumn in range (len (sampleSyst)) :
              if itColumn!=0 and itColumn!=1 : # first two are name and shape
                if sampleSyst[itColumn] == "-" :
                  f.write (sampleSyst[itColumn])
                  f.write ("   ")
                else :
                  kvalue = float (sampleSyst[itColumn])
                  kvalue *= globalScale
                  f.write (str(kvalue))
                  f.write ("   ")
              else :
                f.write (sampleSyst[itColumn])
                f.write ("   ")
          f.write (' \n')
          
        
        else :
          f.write (systematics[it] + '\n')

      else :
        f.write (systematics[it] + '\n')

    f.close ()

    print 'new file: ', filename



######################################


if __name__ == '__main__':


    print '                                                                                                                                       '
    print '  ____|        |                              |         |              __ \          |                                 |                '
    print '  __|  \ \  /  __|   __|  _` |  __ \    _ \   |   _` |  __|   _ \      |   |   _` |  __|   _` |   __|   _` |   __|  _` |   __|          '
    print '  |     `  <   |    |    (   |  |   |  (   |  |  (   |  |     __/      |   |  (   |  |    (   |  (     (   |  |    (   | \__ \          '
    print ' _____| _/\_\ \__| _|   \__,_|  .__/  \___/  _| \__,_| \__| \___|     ____/  \__,_| \__| \__,_| \___| \__,_| _|   \__,_| ____/          '
    print '                               _|                                                                                                       '
    print '                                                                                                                                        '


    #if len (sys.argv) < 2 : 
        #print 'input datacard folder missing\n'
        #exit (1)

    parser = OptionParser()
    parser.add_option("-f", "--folder",       dest="folderNameInput",    help="folder name",        metavar="DATACARDS")
    parser.add_option("-o", "--outputFolder", dest="folderNameOutput",   help="folder name output", metavar="NEWDATACARDS")
    parser.add_option("-i", "--input",        dest="xsecScale",          help="cross section scaling file (e.g. from 8 to 13 TeV)",     default='blabla.py')
    parser.add_option("-s", "--scale",        dest="scale",              help="scaling factor in luminosity", default="1.0")
    parser.add_option("-n", "--scaleNuisFile",dest="scaleNuisFile",      help="scale according to luminosity or something else nuisances", default=None)

    (options, args) = parser.parse_args()


    nuisancesScaling = {}
    if options.scaleNuisFile != None and os.path.exists(options.scaleNuisFile) :
      handle = open(options.scaleNuisFile,'r')
      exec(handle)
      handle.close()
    


    # make a copy of the input folder
    print 'NB folder ' + str(options.folderNameOutput) + ' cleaned, being replaced'

    currentFolder = getstatusoutput ('pwd')[1]
    print 'rm -rf ./' + str(options.folderNameOutput)
    os.system('rm -rf ./' + str(options.folderNameOutput))
    print 'cp -r ' + str(options.folderNameInput) + ' ./' + str(options.folderNameOutput)
    getstatusoutput ('cp -r ' + str(options.folderNameInput) + ' ./' + str(options.folderNameOutput))

    # look for all datacards in that folder
    listOfDatacards = []
    for elem in getstatusoutput ('ls ' + str (options.folderNameInput ) + ' | grep txt')[1].split ('\n'):
        listOfDatacards.append (currentFolder + '/' +  str(options.folderNameOutput)  + '/' + str (elem))

    # for each datacard perform the nuisances scan
    for datacard in listOfDatacards :
        ScaleDatacard (datacard,options.xsecScale,float(options.scale),nuisancesScaling)



