#! /bin/sh


rm ../hww2l2v/125.6/*.root ../hww2l2v/125.6/hww?f_0j_*.txt ../hww2l2v/125.6/hww?f_1j_*.txt ../hww2l2v/125.6/*7TeV.txt

# scaling without systematic scaling
# 300/fb = 15.5 * 19.4/fb --> scale factor ~ 15.5

python ModifyDatacard.py -f ../hww2l2v/125.6/ -o vbf-07Nov2013-x15  -i OfficialScale8to13TeV.py  -s 15.5

echo "to test: (example):"
echo "combine /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/vbf-07Nov2013-x15/hwwof_2j_shape_8TeV.txt -m 125 --expectSignal=1 -t -1 -M Asymptotic "
