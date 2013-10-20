ExtrapolationDatacards
======================

Extrapolate datacards to higher luminosity and scaling sample composition (change of $\sqrt{s}$)


    python ModifyDatacard.py -f datacards -i scale8to13TeV.py  -s 2.5

    cp -r /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 ./
    cp -r qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0000
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0001  -i scale8to13TeV.py  -s 0.1
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0002  -i scale8to13TeV.py  -s 0.2
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0003  -i scale8to13TeV.py  -s 0.3
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0004  -i scale8to13TeV.py  -s 0.4
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0005  -i scale8to13TeV.py  -s 0.5
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0006  -i scale8to13TeV.py  -s 0.6
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0007  -i scale8to13TeV.py  -s 0.7
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0008  -i scale8to13TeV.py  -s 0.8
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0009  -i scale8to13TeV.py  -s 0.9
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0010  -i scale8to13TeV.py  -s 1.0
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0020  -i scale8to13TeV.py  -s 2.0
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0030  -i scale8to13TeV.py  -s 3.0
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0040  -i scale8to13TeV.py  -s 4.0
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0050  -i scale8to13TeV.py  -s 5.0
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0100  -i scale8to13TeV.py  -s 10.0
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x1000  -i scale8to13TeV.py  -s 100.0
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Shape2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x3000  -i scale8to13TeV.py  -s 300.0


and copy to test

    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x*      /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/

    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0000   /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0000
    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0005   /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0005
    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0010   /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0010
    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0020   /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0020
    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0050   /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0050
    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0100   /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0100
    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x1000   /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x1000
    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x3000   /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x3000

run limit

    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0000
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0001
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0002
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0003
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0004
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0005
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0006
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0007
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0008
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0009
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0010
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0020
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0030
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0040
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0050
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x0100
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x1000
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x3000

and analyze

    cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x*.out ./

    cat asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x*.out  | grep 50.0% | awk '{print $5}' &> resultsMedian.txt
    cat asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x*.out  | grep 2.5%  | awk '{print $5}' &> resultsM2.txt
    cat asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x*.out  | grep 16.0% | awk '{print $5}' &> resultsM1.txt
    cat asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x*.out  | grep 84.0% | awk '{print $5}' &> resultsP1.txt
    cat asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x*.out  | grep 97.5% | awk '{print $5}' &> resultsP2.txt
    root -l DrawExtrapolation.cxx

or even better

    cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-26Jun-Shape2012-x*.out ./
    root -l ReadAndDrawExtrapolation.cxx
