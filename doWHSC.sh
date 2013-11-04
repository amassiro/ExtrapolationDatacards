#! /bin/sh

rm -r qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*
cp -r qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0000

# scaling the systematics with luminosity

python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0001  -i scale8to13TeV.py  -s 0.1   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0002  -i scale8to13TeV.py  -s 0.2   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0003  -i scale8to13TeV.py  -s 0.3   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0004  -i scale8to13TeV.py  -s 0.4   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0005  -i scale8to13TeV.py  -s 0.5   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0006  -i scale8to13TeV.py  -s 0.6   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0007  -i scale8to13TeV.py  -s 0.7   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0008  -i scale8to13TeV.py  -s 0.8   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0009  -i scale8to13TeV.py  -s 0.9   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0010  -i scale8to13TeV.py  -s 1.0   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0020  -i scale8to13TeV.py  -s 2.0   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0030  -i scale8to13TeV.py  -s 3.0   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0040  -i scale8to13TeV.py  -s 4.0   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0050  -i scale8to13TeV.py  -s 5.0   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0100  -i scale8to13TeV.py  -s 10.0   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0200  -i scale8to13TeV.py  -s 20.0   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0300  -i scale8to13TeV.py  -s 30.0   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0400  -i scale8to13TeV.py  -s 40.0   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0500  -i scale8to13TeV.py  -s 50.0   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x1000  -i scale8to13TeV.py  -s 100.0   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x3000  -i scale8to13TeV.py  -s 300.0   --scaleNuis 1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x9000  -i scale8to13TeV.py  -s 900.0   --scaleNuis 1

# without systematics scaling

cp -r qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0000
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0001  -i scale8to13TeV.py  -s 0.1
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0002  -i scale8to13TeV.py  -s 0.2
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0003  -i scale8to13TeV.py  -s 0.3
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0004  -i scale8to13TeV.py  -s 0.4
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0005  -i scale8to13TeV.py  -s 0.5
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0006  -i scale8to13TeV.py  -s 0.6
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0007  -i scale8to13TeV.py  -s 0.7
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0008  -i scale8to13TeV.py  -s 0.8
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0009  -i scale8to13TeV.py  -s 0.9
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0010  -i scale8to13TeV.py  -s 1.0
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0020  -i scale8to13TeV.py  -s 2.0
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0030  -i scale8to13TeV.py  -s 3.0
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0040  -i scale8to13TeV.py  -s 4.0
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0050  -i scale8to13TeV.py  -s 5.0
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0100  -i scale8to13TeV.py  -s 10.0
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0200  -i scale8to13TeV.py  -s 20.0
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0300  -i scale8to13TeV.py  -s 30.0
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0400  -i scale8to13TeV.py  -s 40.0
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0500  -i scale8to13TeV.py  -s 50.0
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x1000  -i scale8to13TeV.py  -s 100.0
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x3000  -i scale8to13TeV.py  -s 300.0
python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x9000  -i scale8to13TeV.py  -s 900.0




# copy to test

rm -r /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*
cp -r  qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*      /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/

rm -r /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x*
cp -r  qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x*      /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/


# run limit

cd /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/
cmsenv


perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0000
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0001
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0002
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0003
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0004
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0005
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0006
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0007
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0008
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0009
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0010
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0020
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0030
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0040
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0050
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0100
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0200
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0300
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0400
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0500
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x1000
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x3000
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x9000


perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0000
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0001
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0002
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0003
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0004
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0005
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0006
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0007
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0008
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0009
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0010
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0020
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0030
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0040
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0050
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0100
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0200
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0300
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0400
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0500
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x1000
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x3000
perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x9000



# and analyze
cd /afs/cern.ch/user/a/amassiro/Limit/ExtrapolationDatacards

cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/asymptoti*hww-19.125.qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*.out ./
cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/asymptoti*hww-19.125.qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x*.out ./


echo "now do:"
echo "root -l ReadAndDrawExtrapolation.cxx"



