#! /bin/sh


rm ../vhww/125.6/v*.* ../vhww/125.6/z*.*   ../vhww/125.6/*_7TeV.*

# scaling without systematic scaling
# 300/fb = 15.5 * 19.4/fb --> scale factor ~ 15.5

python ModifyDatacard.py -f ../vhww/125.6/ -o vh-07Nov2013-x15  -i OfficialScale8to13TeV.py  -s 15.5

echo "to test: (example):"
echo "combine /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/vh-07Nov2013-x15//hwwof_vh2j_shape_8TeV.txt -m 125 --expectSignal=1 -t -1 -M Asymptotic "
