ExtrapolationDatacards
======================

Extrapolate datacards to higher luminosity and scaling sample composition (change of $\sqrt{s}$)


    python ModifyDatacard.py -f datacards -i scale8to13TeV.py  -s 2.5


working in

    /afs/cern.ch/user/a/amassiro/Limit/ExtrapolationDatacards
    /home/amassiro/Datacards/ExtrapolationDatacards

    

Official datacards rescaling:

    ./doVBF.sh
    ./doVH.sh
    ./doAllDatacards.sh


ggH 13 TeV 

    
    cp -r /afs/cern.ch/user/a/amassiro/Framework/CMSSW_7_6_3/src/PlotsConfigurations/Configurations/ggH/datacards/    ggHEFCAInput/
    
    sh scripts/doGGHEFCA.sh

    r99t ReadAndDrawExtrapolation.cxx\(\"result.data.MaxLikelihoodFit.Moriond2016.v1.txt.pruned\"\)
    r99t ReadAndDrawExtrapolationSignificance.cxx\(\"result.data.Significance.Moriond2016.v1.txt.pruned\"\)

    

WHSC

    cp -r /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC-All-03Nov-Shape2012 ./
    ls qqHWWlnln-WHSC-All-03Nov-Shape2012/ | grep -v 125 | awk '{print "rm qqHWWlnln-WHSC-All-03Nov-Shape2012/"$1}'

fix for multiple folder directories:

    mkdir qqHWWlnln-WHSC-All-03Nov-Shape2012/shapes/
    cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-03Nov-Shape2012-EE/shapes/hww-19.36fb.mH125.ll_whsc_shape.root    qqHWWlnln-WHSC-All-03Nov-Shape2012/shapes/histoEE.root
    cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-03Nov-Shape2012-EM/shapes/hww-19.36fb.mH125.ll_whsc_shape.root    qqHWWlnln-WHSC-All-03Nov-Shape2012/shapes/histoEM.root
    cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-03Nov-Shape2012-ME/shapes/hww-19.36fb.mH125.ll_whsc_shape.root    qqHWWlnln-WHSC-All-03Nov-Shape2012/shapes/histoME.root
    cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-03Nov-Shape2012-MM/shapes/hww-19.36fb.mH125.ll_whsc_shape.root    qqHWWlnln-WHSC-All-03Nov-Shape2012/shapes/histoMM.root

    cat qqHWWlnln-WHSC-All-03Nov-Shape2012/hww-19.36fb.mH125.txt |  sed -e s%qqHWWlnln-WHSC2012-2012-03Nov-Shape2012-EE/shapes/hww-19.36fb.mH125.ll_whsc_shape.root%shapes/histoEE.root%g | \
    sed -e s%qqHWWlnln-WHSC2012-2012-03Nov-Shape2012-EM/shapes/hww-19.36fb.mH125.ll_whsc_shape.root%shapes/histoEM.root%g | \
    sed -e s%qqHWWlnln-WHSC2012-2012-03Nov-Shape2012-ME/shapes/hww-19.36fb.mH125.ll_whsc_shape.root%shapes/histoME.root%g | \
    sed -e s%qqHWWlnln-WHSC2012-2012-03Nov-Shape2012-MM/shapes/hww-19.36fb.mH125.ll_whsc_shape.root%shapes/histoMM.root%g > \
    qqHWWlnln-WHSC-All-03Nov-Shape2012/hww-19.36fb.mH125.txt.temp

    mv qqHWWlnln-WHSC-All-03Nov-Shape2012/hww-19.36fb.mH125.txt.temp    qqHWWlnln-WHSC-All-03Nov-Shape2012/hww-19.36fb.mH125.txt


ggH2j

    cp -r /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012 ./
    ls qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012/ | grep -v 125 | awk '{print "rm qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012/"$1}'
    ls qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012/shapes/ | grep -v 125 | awk '{print "rm qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012/shapes/"$1}'


WWewk

    cp -r /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WW2jewk-All-01Jan-Shape2012 ./


other:

    cp -r /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012 ./
    ls qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012/ | grep -v 125 | awk '{print "rm qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012/"$1}'
    ls qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012/shapes/ | grep -v 125 | awk '{print "rm qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012/shapes/"$1}'

    cp -r /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 ./
    ls qqHWWlnln-WHSC2012-2012-30Oct-Shape2012/ | grep -v 125 | awk '{print "rm qqHWWlnln-WHSC2012-2012-30Oct-Shape2012/"$1}'

    rm -r qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*
    cp -r qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0000
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0001  -i scale8to13TeV.py  -s 0.1   --scaleNuis 1
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-30Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0002  -i scale8to13TeV.py  -s 0.2   --scaleNuis 1

    cp -r qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0000
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0001  -i scale8to13TeV.py  -s 0.1
    python ModifyDatacard.py -f qqHWWlnln-WHSC2012-2012-23Oct-Shape2012 -o qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0002  -i scale8to13TeV.py  -s 0.2

and copy to test

    rm -r /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*
    cp -r  qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*      /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/

    rm -r /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x*
    cp -r  qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x*      /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/

    cp -r  qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0000   /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0000
    cp -r  qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0005   /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0005

run limit

    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0000
    perl submitLocal_CutBased.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0001


    perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0000
    perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x0001



    perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0000
    perl submitLocal_CutBased_SignalMassDependentInjection.pl qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x0001


and analyze

    cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/asymptoti*hww-19.125.qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*.out ./

    cat asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*.out  | grep 50.0% | awk '{print $5}' &> resultsMedian.txt
    cat asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*.out  | grep 2.5%  | awk '{print $5}' &> resultsM2.txt
    cat asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*.out  | grep 16.0% | awk '{print $5}' &> resultsM1.txt
    cat asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*.out  | grep 84.0% | awk '{print $5}' &> resultsP1.txt
    cat asymptotic.hww-19.125.qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*.out  | grep 97.5% | awk '{print $5}' &> resultsP2.txt
    root -l DrawExtrapolation.cxx

or even better

    cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/asymptoti*hww-19.125.qqHWWlnln-WHSC2012-2012-30Oct-Shape2012-x*.out ./
    cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/asymptoti*hww-19.125.qqHWWlnln-WHSC2012-2012-23Oct-Shape2012-x*.out ./
    root -l ReadAndDrawExtrapolation.cxx




all coded into a script:

   ./doWHSC.sh






