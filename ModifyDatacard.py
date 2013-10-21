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

######################################



# ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ---- ----

def ScaleDatacard (datacardname,xsecScale,scale) :

    # open the datacard file

    print 'Opening original input datacard: ', datacardname
    lines = open (datacardname, 'r').read().split ('\n')
    nametag = datacardname.split ('/')[-1].replace ('.txt', '')
    thepath = datacardname.replace (nametag + '.txt', '')

    print "nametag = ",nametag
    print "thepath = ",thepath

    # read datacard and separate bin, sample, rate, ...

    systime = 0
    header = []
    binName = []
    longListBin = []   # the bin list just before systematics
    sampleName = []
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
        if line.split (' ')[0] == 'bin' and firstTimeBin:
          binName = line.split (' ')
          binName = filter(lambda a: a != 'bin', binName)
          binName = filter(lambda a: a != '', binName)
          firstTimeBin = False
        elif line.split (' ')[0] == 'bin':
         longListBin.append(line)
        elif line.split (' ')[0] == 'observation' :
          observation.append(line)
        elif line.split (' ')[0] == 'process' and firstTimeProcess:
          sampleName = line.split (' ')
          sampleName = filter(lambda a: a != 'process', sampleName)
          sampleName = filter(lambda a: a != '', sampleName)
          firstTimeProcess = False
        elif line.split (' ')[0] == 'process':
          longListRateIndex.append(line)
        elif line.split (' ')[0] == 'rate' :
          systime = 1
          sampleRate = line.split (' ')
          sampleRate = filter(lambda a: a != 'rate', sampleRate)
          sampleRate = filter(lambda a: a != '', sampleRate)
        else :
          header.append (line)
          #   0   1                   2                                    3
          #shapes *               hwwof_1j_shape_7TeV            hwwof_1j.input_7TeV.root              histo_$PROCESS histo_$PROCESS_$SYSTEMATIC
          if line.split (' ')[0] == 'shapes' :
            tempRootList = line.split (' ')
            tempRootList = filter(lambda a: a != '', tempRootList)
            if tempRootList[1] == '*' :
              rootFiles[tempRootList[2]] = tempRootList[3]
      else:
        systematics.append (line)
        systematicsName.append (line.split (' ')[0])

    systematics = [elem for elem in systematics if len (elem.split ()) > 0]

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



    # modify sample rate with scale and scaleFactor (sample dependent)
    newSampleRate = []
    numSample = 0
    for rate in sampleRate:
      additionalScale = 1.
      if sampleName[numSample] in scaleFactor :
         additionalScale = scaleFactor[ sampleName[numSample] ]
      numSample+=1
      newSampleRate.append(scale*additionalScale*float(rate))


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
        for sample in sampleName:
          #print "histoName = ",histoName
          match  = re.search("histo_"+str(sample)+"_", histoName)
          match2 = bool("histo_"+str(sample) == histoName)
          if match or match2:
            additionalScale = 1.
            if sample in scaleFactor :
              additionalScale = scaleFactor[ sample ]
            globalScale = scale*additionalScale
            histogram.Sumw2()
            histogram.Scale(globalScale)
            #print "globalScale = ",globalScale

      # save new root file
      for n,h in histograms.iteritems():
        h.Write()
      outFile.Close()

      os.system ("mv "+str(thepath)+"/"+str(rootFiles[rootFileBin])+".new.root "+str(thepath)+"/"+str(rootFiles[rootFileBin]))
      print "mv "+str(thepath)+"/"+str(rootFiles[rootFileBin])+".new.root "+str(thepath)+"/"+str(rootFiles[rootFileBin])


    # write new datacard
    filename = str(thepath) + '/' + str(nametag) + '.txt'
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
      f.write (systematics[it] + '\n')

    f.close ()



######################################


if __name__ == '__main__':


    #if len (sys.argv) < 2 : 
        #print 'input datacard folder missing\n'
        #exit (1)

    parser = OptionParser()
    parser.add_option("-f", "--folder",       dest="folderNameInput",    help="folder name",        metavar="DATACARDS")
    parser.add_option("-o", "--outputFolder", dest="folderNameOutput",   help="folder name output", metavar="NEWDATACARDS")
    parser.add_option("-i", "--input",        dest="xsecScale",          help="cross section scaling file (e.g. from 8 to 13 TeV)",     default='blabla.py')
    parser.add_option("-s", "--scale",        dest="scale",              help="scaling factor in luminosity", default="1.0")

    (options, args) = parser.parse_args()



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
        ScaleDatacard (datacard,options.xsecScale,float(options.scale))



