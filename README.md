ExtrapolationDatacards
======================

Extrapolate datacards to higher luminosity and scaling sample composition (change of $\sqrt{s}$)


    python ModifyDatacard.py -f datacards -i scale8to13TeV.py  -s 2.5

    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Cut2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x1  -i scale8to13TeV.py  -s 1.0
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Cut2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x2  -i scale8to13TeV.py  -s 2.0
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Cut2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x5  -i scale8to13TeV.py  -s 5.0
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Cut2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x10  -i scale8to13TeV.py  -s 10.0
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Cut2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x100  -i scale8to13TeV.py  -s 100.0
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-26Jun-Cut2012 -o qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x300  -i scale8to13TeV.py  -s 300.0


and copy to test

    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x1    /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x1
    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x2    /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x2
    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x5    /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x5
    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x10   /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x10
    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x100  /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x100
    cp -r  qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x300  /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-26Jun-Cut2012-x300
