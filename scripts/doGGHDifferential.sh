
# remove rescaled datacards
rm -r ggHDifferential-ext-x*

cp -r ggHDifferentialInput/ ggHDifferential-ext-x0005/
cp -r ggHDifferentialInput/ ggHDifferential-ext-x0010/
cp -r ggHDifferentialInput/ ggHDifferential-ext-x0050/


# scaling the systematics with luminosity

rm ggHDifferentialInput/hww2l2v_13TeV_em_01j/mllVSmth/datacard.txt
rm ggHDifferentialInput/hww2l2v_13TeV_me_01j/mllVSmth/datacard.txt
rm ggHDifferentialInput/hww2l2v_13TeV_top_of0j/events/datacard.txt
rm ggHDifferentialInput/hww2l2v_13TeV_top_of1j/events/datacard.txt
rm ggHDifferentialInput/hww2l2v_13TeV_dytt_of0j/events/datacard.txt
rm ggHDifferentialInput/hww2l2v_13TeV_dytt_of1j/events/datacard.txt


python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_em_01j/mllVSmth/   -o    ggHDifferential-ext-x0005/hww2l2v_13TeV_em_01j/mllVSmth/     -s    5.0    -n  nuisancesToScale.py   
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_me_01j/mllVSmth/   -o    ggHDifferential-ext-x0005/hww2l2v_13TeV_me_01j/mllVSmth/     -s    5.0    -n  nuisancesToScale.py       
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_top_of0j/events/   -o    ggHDifferential-ext-x0005/hww2l2v_13TeV_top_of0j/events/     -s    5.0    -n  nuisancesToScale.py       
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_top_of1j/events/   -o    ggHDifferential-ext-x0005/hww2l2v_13TeV_top_of1j/events/     -s    5.0    -n  nuisancesToScale.py       
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_dytt_of0j/events/  -o    ggHDifferential-ext-x0005/hww2l2v_13TeV_dytt_of0j/events/    -s    5.0    -n  nuisancesToScale.py       
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_dytt_of1j/events/  -o    ggHDifferential-ext-x0005/hww2l2v_13TeV_dytt_of1j/events/    -s    5.0    -n  nuisancesToScale.py       


python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_em_01j/mllVSmth/   -o    ggHDifferential-ext-x0010/hww2l2v_13TeV_em_01j/mllVSmth/     -s   10.0    -n  nuisancesToScale.py   
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_me_01j/mllVSmth/   -o    ggHDifferential-ext-x0010/hww2l2v_13TeV_me_01j/mllVSmth/     -s   10.0    -n  nuisancesToScale.py       
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_top_of0j/events/   -o    ggHDifferential-ext-x0010/hww2l2v_13TeV_top_of0j/events/     -s   10.0    -n  nuisancesToScale.py       
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_top_of1j/events/   -o    ggHDifferential-ext-x0010/hww2l2v_13TeV_top_of1j/events/     -s   10.0    -n  nuisancesToScale.py       
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_dytt_of0j/events/  -o    ggHDifferential-ext-x0010/hww2l2v_13TeV_dytt_of0j/events/    -s   10.0    -n  nuisancesToScale.py       
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_dytt_of1j/events/  -o    ggHDifferential-ext-x0010/hww2l2v_13TeV_dytt_of1j/events/    -s   10.0    -n  nuisancesToScale.py       


python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_em_01j/mllVSmth/   -o    ggHDifferential-ext-x0050/hww2l2v_13TeV_em_01j/mllVSmth/     -s   50.0    -n  nuisancesToScale.py   
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_me_01j/mllVSmth/   -o    ggHDifferential-ext-x0050/hww2l2v_13TeV_me_01j/mllVSmth/     -s   50.0    -n  nuisancesToScale.py       
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_top_of0j/events/   -o    ggHDifferential-ext-x0050/hww2l2v_13TeV_top_of0j/events/     -s   50.0    -n  nuisancesToScale.py       
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_top_of1j/events/   -o    ggHDifferential-ext-x0050/hww2l2v_13TeV_top_of1j/events/     -s   50.0    -n  nuisancesToScale.py       
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_dytt_of0j/events/  -o    ggHDifferential-ext-x0050/hww2l2v_13TeV_dytt_of0j/events/    -s   50.0    -n  nuisancesToScale.py       
python ModifyDatacard.py -f ggHDifferentialInput/hww2l2v_13TeV_dytt_of1j/events/  -o    ggHDifferential-ext-x0050/hww2l2v_13TeV_dytt_of1j/events/    -s   50.0    -n  nuisancesToScale.py       




# run limit
cd ~/Framework/Combine/CMSSW_7_4_7/src/
eval `scramv1 runtime -sh`
cd -



combineCards.py   em01j13=ggHDifferential-ext-x0005/hww2l2v_13TeV_em_01j/mllVSmth/datacard.txt.pruned.txt \
                  me01j13=ggHDifferential-ext-x0005/hww2l2v_13TeV_me_01j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHDifferential-ext-x0005/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHDifferential-ext-x0005/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHDifferential-ext-x0005/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHDifferential-ext-x0005/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0005.txt

                  
                  

combineCards.py   em01j13=ggHDifferential-ext-x0010/hww2l2v_13TeV_em_01j/mllVSmth/datacard.txt.pruned.txt \
                  me01j13=ggHDifferential-ext-x0010/hww2l2v_13TeV_me_01j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHDifferential-ext-x0010/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHDifferential-ext-x0010/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHDifferential-ext-x0010/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHDifferential-ext-x0010/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0010.txt

                  



combineCards.py   em01j13=ggHDifferential-ext-x0050/hww2l2v_13TeV_em_01j/mllVSmth/datacard.txt.pruned.txt \
                  me01j13=ggHDifferential-ext-x0050/hww2l2v_13TeV_me_01j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHDifferential-ext-x0050/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHDifferential-ext-x0050/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHDifferential-ext-x0050/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHDifferential-ext-x0050/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0050.txt

                  


                  
                  
#      
# text2workspace.py -P HiggsAnalysis.CombinedLimit.PhysicsModel:multiSignalModel --PO verbose  \
#                    --PO 'map=.*/ggH_hww_pt1:r1[1,-20,20]' --PO 'map=.*/ggH_hww_pt2:r2[1,-20,20]' --PO 'map=.*/ggH_hww_pt3:r3[1,-20,20]' \
#                    Moriond2016.v1.txt.pruned.x0010.txt  -o  workspace.Moriond2016.v1.txt.pruned.x0010.root             
#      
# combine -M MultiDimFit -t -1 \
#      --setPhysicsModelParameters    r1=1,r2=1,r3=1 \
#      --algo=grid --points=1000  \
#      workspace.Moriond2016.v1.txt.pruned.x0010.root            >   result.MultiDimFit.workspace.Moriond2016.v1.txt.pruned.x0010.grid.txt
#      
#           
# combine -M MultiDimFit -t -1 \
#      --setPhysicsModelParameters    r1=1,r2=1,r3=1 \
#      --algo=cross  \
#      workspace.Moriond2016.v1.txt.pruned.x0010.root            >   result.MultiDimFit.workspace.Moriond2016.v1.txt.pruned.x0010.cross.txt
#      
#      
# 
#      
#      
 
     
text2workspace.py -P HiggsAnalysis.CombinedLimit.PhysicsModel:multiSignalModel --PO verbose  \
                   --PO 'map=.*/ggH_hww_pt1:r1[1,-20,20]' --PO 'map=.*/ggH_hww_pt2:r2[1,-20,20]' --PO 'map=.*/ggH_hww_pt3:r3[1,-20,20]' \
                   Moriond2016.v1.txt.pruned.x0050.txt  -o  workspace.Moriond2016.v1.txt.pruned.x0050.root             
     
# combine -M MultiDimFit -t -1 \
#      --setPhysicsModelParameters    r1=1,r2=1,r3=1 \
#      --algo=grid --points=1000  \
#      workspace.Moriond2016.v1.txt.pruned.x0050.root            >   result.MultiDimFit.workspace.Moriond2016.v1.txt.pruned.x0050.grid.txt
     
          
combine -M MultiDimFit -t -1 \
     --setPhysicsModelParameters    r1=1,r2=1,r3=1 \
     --algo=cross  \
     workspace.Moriond2016.v1.txt.pruned.x0050.root            >   result.MultiDimFit.workspace.Moriond2016.v1.txt.pruned.x0050.cross.txt
     
     
     