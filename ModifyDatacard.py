#!/usr/bin/python

######################################
# workaround to disable pyroot parser!
import sys
tmpargv = sys.argv
sys.argv = [ '-b','-n' ]
from ROOT import TFile, TH1F, TCanvas, gStyle, TLine
sys.argv = tmpargv
from optparse import OptionParser
######################################

import os
import subprocess
import operator
from commands import getstatusoutput
from operator import itemgetter

import fnmatch

######################################














######################################


if __name__ == '__main__':


    #if len (sys.argv) < 2 : 
        #print 'input datacard folder missing\n'
        #exit (1)

    parser = OptionParser()
    parser.add_option("-f", "--folder",       dest="folderNameInput",    help="folder name",        metavar="DATACARDS")
    parser.add_option("-o", "--outputFolder", dest="folderNameOutput",   help="folder name output", metavar="NEWDATACARDS")
    parser.add_option("-i", "--input",        dest="xsecScale",          help="cross section scaling file (e.g. from 8 to 13 TeV)",     default='blabla.py')
    parser.add_option("-s", "--scale",        dest="scale",              help="scaling factor in luminosity", default='1.0')

    (options, args) = parser.parse_args()

