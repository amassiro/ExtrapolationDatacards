
# remove rescaled datacards
rm -r ggHEFCA-ext-*

cp -r ggHEFCAInput/ ggHEFCA-ext-x0001/
cp -r ggHEFCAInput/ ggHEFCA-ext-x0002/
cp -r ggHEFCAInput/ ggHEFCA-ext-x0003/
cp -r ggHEFCAInput/ ggHEFCA-ext-x0004/
cp -r ggHEFCAInput/ ggHEFCA-ext-x0005/
cp -r ggHEFCAInput/ ggHEFCA-ext-x0010/
cp -r ggHEFCAInput/ ggHEFCA-ext-x0020/
cp -r ggHEFCAInput/ ggHEFCA-ext-x0030/
cp -r ggHEFCAInput/ ggHEFCA-ext-x0050/
cp -r ggHEFCAInput/ ggHEFCA-ext-x0100/
cp -r ggHEFCAInput/ ggHEFCA-ext-x0200/


# scaling the systematics with luminosity

rm ggHEFCAInput/hww2l2v_13TeV_em_1j/mllVSmth/datacard.txt
rm ggHEFCAInput/hww2l2v_13TeV_me_1j/mllVSmth/datacard.txt
rm ggHEFCAInput/hww2l2v_13TeV_em_0j/mllVSmth/datacard.txt
rm ggHEFCAInput/hww2l2v_13TeV_me_0j/mllVSmth/datacard.txt
rm ggHEFCAInput/hww2l2v_13TeV_top_of0j/events/datacard.txt
rm ggHEFCAInput/hww2l2v_13TeV_top_of1j/events/datacard.txt
rm ggHEFCAInput/hww2l2v_13TeV_dytt_of0j/events/datacard.txt
rm ggHEFCAInput/hww2l2v_13TeV_dytt_of1j/events/datacard.txt

python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_1j/mllVSmth/    -o     ggHEFCA-ext-x0001/hww2l2v_13TeV_em_1j/mllVSmth/      -s    1.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_1j/mllVSmth/    -o     ggHEFCA-ext-x0001/hww2l2v_13TeV_me_1j/mllVSmth/      -s    1.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_0j/mllVSmth/    -o     ggHEFCA-ext-x0001/hww2l2v_13TeV_em_0j/mllVSmth/      -s    1.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_0j/mllVSmth/    -o     ggHEFCA-ext-x0001/hww2l2v_13TeV_me_0j/mllVSmth/      -s    1.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of0j/events/   -o     ggHEFCA-ext-x0001/hww2l2v_13TeV_top_of0j/events/     -s    1.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of1j/events/   -o     ggHEFCA-ext-x0001/hww2l2v_13TeV_top_of1j/events/     -s    1.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of0j/events/  -o     ggHEFCA-ext-x0001/hww2l2v_13TeV_dytt_of0j/events/    -s    1.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of1j/events/  -o     ggHEFCA-ext-x0001/hww2l2v_13TeV_dytt_of1j/events/    -s    1.0    


python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_1j/mllVSmth/    -o     ggHEFCA-ext-x0002/hww2l2v_13TeV_em_1j/mllVSmth/      -s    2.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_1j/mllVSmth/    -o     ggHEFCA-ext-x0002/hww2l2v_13TeV_me_1j/mllVSmth/      -s    2.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_0j/mllVSmth/    -o     ggHEFCA-ext-x0002/hww2l2v_13TeV_em_0j/mllVSmth/      -s    2.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_0j/mllVSmth/    -o     ggHEFCA-ext-x0002/hww2l2v_13TeV_me_0j/mllVSmth/      -s    2.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of0j/events/   -o     ggHEFCA-ext-x0002/hww2l2v_13TeV_top_of0j/events/     -s    2.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of1j/events/   -o     ggHEFCA-ext-x0002/hww2l2v_13TeV_top_of1j/events/     -s    2.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of0j/events/  -o     ggHEFCA-ext-x0002/hww2l2v_13TeV_dytt_of0j/events/    -s    2.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of1j/events/  -o     ggHEFCA-ext-x0002/hww2l2v_13TeV_dytt_of1j/events/    -s    2.0    


python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_1j/mllVSmth/    -o     ggHEFCA-ext-x0003/hww2l2v_13TeV_em_1j/mllVSmth/      -s    3.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_1j/mllVSmth/    -o     ggHEFCA-ext-x0003/hww2l2v_13TeV_me_1j/mllVSmth/      -s    3.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_0j/mllVSmth/    -o     ggHEFCA-ext-x0003/hww2l2v_13TeV_em_0j/mllVSmth/      -s    3.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_0j/mllVSmth/    -o     ggHEFCA-ext-x0003/hww2l2v_13TeV_me_0j/mllVSmth/      -s    3.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of0j/events/   -o     ggHEFCA-ext-x0003/hww2l2v_13TeV_top_of0j/events/     -s    3.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of1j/events/   -o     ggHEFCA-ext-x0003/hww2l2v_13TeV_top_of1j/events/     -s    3.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of0j/events/  -o     ggHEFCA-ext-x0003/hww2l2v_13TeV_dytt_of0j/events/    -s    3.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of1j/events/  -o     ggHEFCA-ext-x0003/hww2l2v_13TeV_dytt_of1j/events/    -s    3.0    


python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_1j/mllVSmth/    -o     ggHEFCA-ext-x0004/hww2l2v_13TeV_em_1j/mllVSmth/      -s    4.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_1j/mllVSmth/    -o     ggHEFCA-ext-x0004/hww2l2v_13TeV_me_1j/mllVSmth/      -s    4.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_0j/mllVSmth/    -o     ggHEFCA-ext-x0004/hww2l2v_13TeV_em_0j/mllVSmth/      -s    4.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_0j/mllVSmth/    -o     ggHEFCA-ext-x0004/hww2l2v_13TeV_me_0j/mllVSmth/      -s    4.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of0j/events/   -o     ggHEFCA-ext-x0004/hww2l2v_13TeV_top_of0j/events/     -s    4.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of1j/events/   -o     ggHEFCA-ext-x0004/hww2l2v_13TeV_top_of1j/events/     -s    4.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of0j/events/  -o     ggHEFCA-ext-x0004/hww2l2v_13TeV_dytt_of0j/events/    -s    4.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of1j/events/  -o     ggHEFCA-ext-x0004/hww2l2v_13TeV_dytt_of1j/events/    -s    4.0    


python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_1j/mllVSmth/    -o     ggHEFCA-ext-x0005/hww2l2v_13TeV_em_1j/mllVSmth/      -s    5.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_1j/mllVSmth/    -o     ggHEFCA-ext-x0005/hww2l2v_13TeV_me_1j/mllVSmth/      -s    5.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_0j/mllVSmth/    -o     ggHEFCA-ext-x0005/hww2l2v_13TeV_em_0j/mllVSmth/      -s    5.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_0j/mllVSmth/    -o     ggHEFCA-ext-x0005/hww2l2v_13TeV_me_0j/mllVSmth/      -s    5.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of0j/events/   -o     ggHEFCA-ext-x0005/hww2l2v_13TeV_top_of0j/events/     -s    5.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of1j/events/   -o     ggHEFCA-ext-x0005/hww2l2v_13TeV_top_of1j/events/     -s    5.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of0j/events/  -o     ggHEFCA-ext-x0005/hww2l2v_13TeV_dytt_of0j/events/    -s    5.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of1j/events/  -o     ggHEFCA-ext-x0005/hww2l2v_13TeV_dytt_of1j/events/    -s    5.0    


python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_1j/mllVSmth/    -o     ggHEFCA-ext-x0010/hww2l2v_13TeV_em_1j/mllVSmth/      -s   10.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_1j/mllVSmth/    -o     ggHEFCA-ext-x0010/hww2l2v_13TeV_me_1j/mllVSmth/      -s   10.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_0j/mllVSmth/    -o     ggHEFCA-ext-x0010/hww2l2v_13TeV_em_0j/mllVSmth/      -s   10.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_0j/mllVSmth/    -o     ggHEFCA-ext-x0010/hww2l2v_13TeV_me_0j/mllVSmth/      -s   10.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of0j/events/   -o     ggHEFCA-ext-x0010/hww2l2v_13TeV_top_of0j/events/     -s   10.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of1j/events/   -o     ggHEFCA-ext-x0010/hww2l2v_13TeV_top_of1j/events/     -s   10.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of0j/events/  -o     ggHEFCA-ext-x0010/hww2l2v_13TeV_dytt_of0j/events/    -s   10.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of1j/events/  -o     ggHEFCA-ext-x0010/hww2l2v_13TeV_dytt_of1j/events/    -s   10.0    



python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_1j/mllVSmth/    -o     ggHEFCA-ext-x0020/hww2l2v_13TeV_em_1j/mllVSmth/      -s   20.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_1j/mllVSmth/    -o     ggHEFCA-ext-x0020/hww2l2v_13TeV_me_1j/mllVSmth/      -s   20.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_0j/mllVSmth/    -o     ggHEFCA-ext-x0020/hww2l2v_13TeV_em_0j/mllVSmth/      -s   20.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_0j/mllVSmth/    -o     ggHEFCA-ext-x0020/hww2l2v_13TeV_me_0j/mllVSmth/      -s   20.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of0j/events/   -o     ggHEFCA-ext-x0020/hww2l2v_13TeV_top_of0j/events/     -s   20.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of1j/events/   -o     ggHEFCA-ext-x0020/hww2l2v_13TeV_top_of1j/events/     -s   20.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of0j/events/  -o     ggHEFCA-ext-x0020/hww2l2v_13TeV_dytt_of0j/events/    -s   20.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of1j/events/  -o     ggHEFCA-ext-x0020/hww2l2v_13TeV_dytt_of1j/events/    -s   20.0    



python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_1j/mllVSmth/    -o     ggHEFCA-ext-x0030/hww2l2v_13TeV_em_1j/mllVSmth/      -s   30.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_1j/mllVSmth/    -o     ggHEFCA-ext-x0030/hww2l2v_13TeV_me_1j/mllVSmth/      -s   30.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_0j/mllVSmth/    -o     ggHEFCA-ext-x0030/hww2l2v_13TeV_em_0j/mllVSmth/      -s   30.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_0j/mllVSmth/    -o     ggHEFCA-ext-x0030/hww2l2v_13TeV_me_0j/mllVSmth/      -s   30.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of0j/events/   -o     ggHEFCA-ext-x0030/hww2l2v_13TeV_top_of0j/events/     -s   30.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of1j/events/   -o     ggHEFCA-ext-x0030/hww2l2v_13TeV_top_of1j/events/     -s   30.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of0j/events/  -o     ggHEFCA-ext-x0030/hww2l2v_13TeV_dytt_of0j/events/    -s   30.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of1j/events/  -o     ggHEFCA-ext-x0030/hww2l2v_13TeV_dytt_of1j/events/    -s   30.0    


python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_1j/mllVSmth/    -o     ggHEFCA-ext-x0050/hww2l2v_13TeV_em_1j/mllVSmth/      -s   50.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_1j/mllVSmth/    -o     ggHEFCA-ext-x0050/hww2l2v_13TeV_me_1j/mllVSmth/      -s   50.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_0j/mllVSmth/    -o     ggHEFCA-ext-x0050/hww2l2v_13TeV_em_0j/mllVSmth/      -s   50.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_0j/mllVSmth/    -o     ggHEFCA-ext-x0050/hww2l2v_13TeV_me_0j/mllVSmth/      -s   50.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of0j/events/   -o     ggHEFCA-ext-x0050/hww2l2v_13TeV_top_of0j/events/     -s   50.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of1j/events/   -o     ggHEFCA-ext-x0050/hww2l2v_13TeV_top_of1j/events/     -s   50.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of0j/events/  -o     ggHEFCA-ext-x0050/hww2l2v_13TeV_dytt_of0j/events/    -s   50.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of1j/events/  -o     ggHEFCA-ext-x0050/hww2l2v_13TeV_dytt_of1j/events/    -s   50.0    


python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_1j/mllVSmth/    -o     ggHEFCA-ext-x0100/hww2l2v_13TeV_em_1j/mllVSmth/      -s  100.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_1j/mllVSmth/    -o     ggHEFCA-ext-x0100/hww2l2v_13TeV_me_1j/mllVSmth/      -s  100.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_0j/mllVSmth/    -o     ggHEFCA-ext-x0100/hww2l2v_13TeV_em_0j/mllVSmth/      -s  100.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_0j/mllVSmth/    -o     ggHEFCA-ext-x0100/hww2l2v_13TeV_me_0j/mllVSmth/      -s  100.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of0j/events/   -o     ggHEFCA-ext-x0100/hww2l2v_13TeV_top_of0j/events/     -s  100.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of1j/events/   -o     ggHEFCA-ext-x0100/hww2l2v_13TeV_top_of1j/events/     -s  100.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of0j/events/  -o     ggHEFCA-ext-x0100/hww2l2v_13TeV_dytt_of0j/events/    -s  100.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of1j/events/  -o     ggHEFCA-ext-x0100/hww2l2v_13TeV_dytt_of1j/events/    -s  100.0    


python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_1j/mllVSmth/    -o     ggHEFCA-ext-x0200/hww2l2v_13TeV_em_1j/mllVSmth/      -s  200.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_1j/mllVSmth/    -o     ggHEFCA-ext-x0200/hww2l2v_13TeV_me_1j/mllVSmth/      -s  200.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_em_0j/mllVSmth/    -o     ggHEFCA-ext-x0200/hww2l2v_13TeV_em_0j/mllVSmth/      -s  200.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_me_0j/mllVSmth/    -o     ggHEFCA-ext-x0200/hww2l2v_13TeV_me_0j/mllVSmth/      -s  200.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of0j/events/   -o     ggHEFCA-ext-x0200/hww2l2v_13TeV_top_of0j/events/     -s  200.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_top_of1j/events/   -o     ggHEFCA-ext-x0200/hww2l2v_13TeV_top_of1j/events/     -s  200.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of0j/events/  -o     ggHEFCA-ext-x0200/hww2l2v_13TeV_dytt_of0j/events/    -s  200.0    
python ModifyDatacard.py -f ggHEFCAInput/hww2l2v_13TeV_dytt_of1j/events/  -o     ggHEFCA-ext-x0200/hww2l2v_13TeV_dytt_of1j/events/    -s  200.0    















# run limit
cd ~/Framework/Combine/CMSSW_7_4_7/src/
eval `scramv1 runtime -sh`
cd -


combineCards.py   em1j13=ggHEFCA-ext-x0001/hww2l2v_13TeV_em_1j/mllVSmth/datacard.txt.pruned.txt \
                  me1j13=ggHEFCA-ext-x0001/hww2l2v_13TeV_me_1j/mllVSmth/datacard.txt.pruned.txt \
                  em0j13=ggHEFCA-ext-x0001/hww2l2v_13TeV_em_0j/mllVSmth/datacard.txt.pruned.txt \
                  me0j13=ggHEFCA-ext-x0001/hww2l2v_13TeV_me_0j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHEFCA-ext-x0001/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHEFCA-ext-x0001/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHEFCA-ext-x0001/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHEFCA-ext-x0001/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0001.txt


                  

combineCards.py   em1j13=ggHEFCA-ext-x0002/hww2l2v_13TeV_em_1j/mllVSmth/datacard.txt.pruned.txt \
                  me1j13=ggHEFCA-ext-x0002/hww2l2v_13TeV_me_1j/mllVSmth/datacard.txt.pruned.txt \
                  em0j13=ggHEFCA-ext-x0002/hww2l2v_13TeV_em_0j/mllVSmth/datacard.txt.pruned.txt \
                  me0j13=ggHEFCA-ext-x0002/hww2l2v_13TeV_me_0j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHEFCA-ext-x0002/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHEFCA-ext-x0002/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHEFCA-ext-x0002/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHEFCA-ext-x0002/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0002.txt




combineCards.py   em1j13=ggHEFCA-ext-x0003/hww2l2v_13TeV_em_1j/mllVSmth/datacard.txt.pruned.txt \
                  me1j13=ggHEFCA-ext-x0003/hww2l2v_13TeV_me_1j/mllVSmth/datacard.txt.pruned.txt \
                  em0j13=ggHEFCA-ext-x0003/hww2l2v_13TeV_em_0j/mllVSmth/datacard.txt.pruned.txt \
                  me0j13=ggHEFCA-ext-x0003/hww2l2v_13TeV_me_0j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHEFCA-ext-x0003/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHEFCA-ext-x0003/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHEFCA-ext-x0003/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHEFCA-ext-x0003/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0003.txt

                  
combineCards.py   em1j13=ggHEFCA-ext-x0004/hww2l2v_13TeV_em_1j/mllVSmth/datacard.txt.pruned.txt \
                  me1j13=ggHEFCA-ext-x0004/hww2l2v_13TeV_me_1j/mllVSmth/datacard.txt.pruned.txt \
                  em0j13=ggHEFCA-ext-x0004/hww2l2v_13TeV_em_0j/mllVSmth/datacard.txt.pruned.txt \
                  me0j13=ggHEFCA-ext-x0004/hww2l2v_13TeV_me_0j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHEFCA-ext-x0004/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHEFCA-ext-x0004/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHEFCA-ext-x0004/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHEFCA-ext-x0004/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0004.txt
                  

combineCards.py   em1j13=ggHEFCA-ext-x0005/hww2l2v_13TeV_em_1j/mllVSmth/datacard.txt.pruned.txt \
                  me1j13=ggHEFCA-ext-x0005/hww2l2v_13TeV_me_1j/mllVSmth/datacard.txt.pruned.txt \
                  em0j13=ggHEFCA-ext-x0005/hww2l2v_13TeV_em_0j/mllVSmth/datacard.txt.pruned.txt \
                  me0j13=ggHEFCA-ext-x0005/hww2l2v_13TeV_me_0j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHEFCA-ext-x0005/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHEFCA-ext-x0005/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHEFCA-ext-x0005/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHEFCA-ext-x0005/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0005.txt

                  
                  

combineCards.py   em1j13=ggHEFCA-ext-x0010/hww2l2v_13TeV_em_1j/mllVSmth/datacard.txt.pruned.txt \
                  me1j13=ggHEFCA-ext-x0010/hww2l2v_13TeV_me_1j/mllVSmth/datacard.txt.pruned.txt \
                  em0j13=ggHEFCA-ext-x0010/hww2l2v_13TeV_em_0j/mllVSmth/datacard.txt.pruned.txt \
                  me0j13=ggHEFCA-ext-x0010/hww2l2v_13TeV_me_0j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHEFCA-ext-x0010/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHEFCA-ext-x0010/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHEFCA-ext-x0010/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHEFCA-ext-x0010/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0010.txt




combineCards.py   em1j13=ggHEFCA-ext-x0020/hww2l2v_13TeV_em_1j/mllVSmth/datacard.txt.pruned.txt \
                  me1j13=ggHEFCA-ext-x0020/hww2l2v_13TeV_me_1j/mllVSmth/datacard.txt.pruned.txt \
                  em0j13=ggHEFCA-ext-x0020/hww2l2v_13TeV_em_0j/mllVSmth/datacard.txt.pruned.txt \
                  me0j13=ggHEFCA-ext-x0020/hww2l2v_13TeV_me_0j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHEFCA-ext-x0020/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHEFCA-ext-x0020/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHEFCA-ext-x0020/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHEFCA-ext-x0020/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0020.txt



combineCards.py   em1j13=ggHEFCA-ext-x0030/hww2l2v_13TeV_em_1j/mllVSmth/datacard.txt.pruned.txt \
                  me1j13=ggHEFCA-ext-x0030/hww2l2v_13TeV_me_1j/mllVSmth/datacard.txt.pruned.txt \
                  em0j13=ggHEFCA-ext-x0030/hww2l2v_13TeV_em_0j/mllVSmth/datacard.txt.pruned.txt \
                  me0j13=ggHEFCA-ext-x0030/hww2l2v_13TeV_me_0j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHEFCA-ext-x0030/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHEFCA-ext-x0030/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHEFCA-ext-x0030/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHEFCA-ext-x0030/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0030.txt

                                                      
                  

combineCards.py   em1j13=ggHEFCA-ext-x0050/hww2l2v_13TeV_em_1j/mllVSmth/datacard.txt.pruned.txt \
                  me1j13=ggHEFCA-ext-x0050/hww2l2v_13TeV_me_1j/mllVSmth/datacard.txt.pruned.txt \
                  em0j13=ggHEFCA-ext-x0050/hww2l2v_13TeV_em_0j/mllVSmth/datacard.txt.pruned.txt \
                  me0j13=ggHEFCA-ext-x0050/hww2l2v_13TeV_me_0j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHEFCA-ext-x0050/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHEFCA-ext-x0050/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHEFCA-ext-x0050/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHEFCA-ext-x0050/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0050.txt

                  

combineCards.py   em1j13=ggHEFCA-ext-x0100/hww2l2v_13TeV_em_1j/mllVSmth/datacard.txt.pruned.txt \
                  me1j13=ggHEFCA-ext-x0100/hww2l2v_13TeV_me_1j/mllVSmth/datacard.txt.pruned.txt \
                  em0j13=ggHEFCA-ext-x0100/hww2l2v_13TeV_em_0j/mllVSmth/datacard.txt.pruned.txt \
                  me0j13=ggHEFCA-ext-x0100/hww2l2v_13TeV_me_0j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHEFCA-ext-x0100/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHEFCA-ext-x0100/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHEFCA-ext-x0100/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHEFCA-ext-x0100/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0100.txt

                  

combineCards.py   em1j13=ggHEFCA-ext-x0200/hww2l2v_13TeV_em_1j/mllVSmth/datacard.txt.pruned.txt \
                  me1j13=ggHEFCA-ext-x0200/hww2l2v_13TeV_me_1j/mllVSmth/datacard.txt.pruned.txt \
                  em0j13=ggHEFCA-ext-x0200/hww2l2v_13TeV_em_0j/mllVSmth/datacard.txt.pruned.txt \
                  me0j13=ggHEFCA-ext-x0200/hww2l2v_13TeV_me_0j/mllVSmth/datacard.txt.pruned.txt \
                  of0j13Top=ggHEFCA-ext-x0200/hww2l2v_13TeV_top_of0j/events/datacard.txt.pruned.txt \
                  of1j13Top=ggHEFCA-ext-x0200/hww2l2v_13TeV_top_of1j/events/datacard.txt.pruned.txt \
                  of0j13DYtt=ggHEFCA-ext-x0200/hww2l2v_13TeV_dytt_of0j/events/datacard.txt.pruned.txt \
                  of1j13DYtt=ggHEFCA-ext-x0200/hww2l2v_13TeV_dytt_of1j/events/datacard.txt.pruned.txt \
                  >   Moriond2016.v1.txt.pruned.x0200.txt

                  
                  
                  
combine -M MaxLikelihoodFit     -t -1 --expectSignal 1      --rMin=-2 --rMax=4  Moriond2016.v1.txt.pruned.x0001.txt             >   result.data.MaxLikelihoodFit.Moriond2016.v1.txt.pruned.x0001.txt    
combine -M ProfileLikelihood    -t -1 --expectSignal 1      --significance Moriond2016.v1.txt.pruned.x0001.txt   >   result.data.Significance.Moriond2016.v1.txt.pruned.x0001.txt

combine -M MaxLikelihoodFit     -t -1 --expectSignal 1      --rMin=-2 --rMax=4  Moriond2016.v1.txt.pruned.x0002.txt             >   result.data.MaxLikelihoodFit.Moriond2016.v1.txt.pruned.x0002.txt    
combine -M ProfileLikelihood    -t -1 --expectSignal 1      --significance Moriond2016.v1.txt.pruned.x0002.txt   >   result.data.Significance.Moriond2016.v1.txt.pruned.x0002.txt

combine -M MaxLikelihoodFit     -t -1 --expectSignal 1      --rMin=-2 --rMax=4  Moriond2016.v1.txt.pruned.x0003.txt             >   result.data.MaxLikelihoodFit.Moriond2016.v1.txt.pruned.x0003.txt    
combine -M ProfileLikelihood    -t -1 --expectSignal 1      --significance Moriond2016.v1.txt.pruned.x0003.txt   >   result.data.Significance.Moriond2016.v1.txt.pruned.x0003.txt

combine -M MaxLikelihoodFit     -t -1 --expectSignal 1      --rMin=-2 --rMax=4  Moriond2016.v1.txt.pruned.x0004.txt             >   result.data.MaxLikelihoodFit.Moriond2016.v1.txt.pruned.x0004.txt    
combine -M ProfileLikelihood    -t -1 --expectSignal 1      --significance Moriond2016.v1.txt.pruned.x0004.txt   >   result.data.Significance.Moriond2016.v1.txt.pruned.x0004.txt

combine -M MaxLikelihoodFit     -t -1 --expectSignal 1      --rMin=-2 --rMax=4  Moriond2016.v1.txt.pruned.x0005.txt             >   result.data.MaxLikelihoodFit.Moriond2016.v1.txt.pruned.x0005.txt    
combine -M ProfileLikelihood    -t -1 --expectSignal 1      --significance Moriond2016.v1.txt.pruned.x0005.txt   >   result.data.Significance.Moriond2016.v1.txt.pruned.x0005.txt

combine -M MaxLikelihoodFit     -t -1 --expectSignal 1      --rMin=-2 --rMax=4  Moriond2016.v1.txt.pruned.x0010.txt             >   result.data.MaxLikelihoodFit.Moriond2016.v1.txt.pruned.x0010.txt    
combine -M ProfileLikelihood    -t -1 --expectSignal 1      --significance Moriond2016.v1.txt.pruned.x0010.txt   >   result.data.Significance.Moriond2016.v1.txt.pruned.x0010.txt

combine -M MaxLikelihoodFit     -t -1 --expectSignal 1      --rMin=-2 --rMax=4  Moriond2016.v1.txt.pruned.x0020.txt             >   result.data.MaxLikelihoodFit.Moriond2016.v1.txt.pruned.x0020.txt    
combine -M ProfileLikelihood    -t -1 --expectSignal 1      --significance Moriond2016.v1.txt.pruned.x0020.txt   >   result.data.Significance.Moriond2016.v1.txt.pruned.x0020.txt

combine -M MaxLikelihoodFit     -t -1 --expectSignal 1      --rMin=-2 --rMax=4  Moriond2016.v1.txt.pruned.x0030.txt             >   result.data.MaxLikelihoodFit.Moriond2016.v1.txt.pruned.x0030.txt    
combine -M ProfileLikelihood    -t -1 --expectSignal 1      --significance Moriond2016.v1.txt.pruned.x0030.txt   >   result.data.Significance.Moriond2016.v1.txt.pruned.x0030.txt

combine -M MaxLikelihoodFit     -t -1 --expectSignal 1      --rMin=-2 --rMax=4  Moriond2016.v1.txt.pruned.x0050.txt             >   result.data.MaxLikelihoodFit.Moriond2016.v1.txt.pruned.x0050.txt    
combine -M ProfileLikelihood    -t -1 --expectSignal 1      --significance Moriond2016.v1.txt.pruned.x0050.txt   >   result.data.Significance.Moriond2016.v1.txt.pruned.x0050.txt

combine -M MaxLikelihoodFit     -t -1 --expectSignal 1      --rMin=-2 --rMax=4  Moriond2016.v1.txt.pruned.x0100.txt   --robustFit 1    >   result.data.MaxLikelihoodFit.Moriond2016.v1.txt.pruned.x0100.txt    
combine -M ProfileLikelihood    -t -1 --expectSignal 1      --significance Moriond2016.v1.txt.pruned.x0100.txt   >   result.data.Significance.Moriond2016.v1.txt.pruned.x0100.txt

combine -M MaxLikelihoodFit     -t -1 --expectSignal 1      --rMin=-2 --rMax=4  Moriond2016.v1.txt.pruned.x0200.txt     --robustFit 1  >   result.data.MaxLikelihoodFit.Moriond2016.v1.txt.pruned.x0200.txt    
combine -M ProfileLikelihood    -t -1 --expectSignal 1      --significance Moriond2016.v1.txt.pruned.x0200.txt   >   result.data.Significance.Moriond2016.v1.txt.pruned.x0200.txt


# combine -M MultiDimFit Moriond2016.v1.txt.pruned.x0001.txt -m 125 --algo=grid --points 200 --setPhysicsModelParameterRanges r=-2,4 -n "LHScanHdata.x0001"     >   result.data.LikelihoodScan.Moriond2016.v1.txt.pruned.x0001.txt

# 
# # and analyze
# cd /afs/cern.ch/user/a/amassiro/Limit/ExtrapolationDatacards
# 
# cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/asymptoti*hww-19.125.qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012-x*.out ./
# cp /afs/cern.ch/user/a/amassiro/scratch0/VBF/Limit/CMSSW_6_1_0/src/asymptoti*hww-19.125.qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012-NoScaling-x*.out ./
# 
# 
# echo "now do:"
# echo "root -l ReadAndDrawExtrapolation.cxx\(\\\"asymptotic.signalInjected.hww-19.125.qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012\\\"\)"
# echo "root -l ReadAndDrawExtrapolation.cxx\(\\\"asymptotic.signalInjected.hww-19.125.qqHWWlnln-ggH2j2012-2012-30Oct-Shape2012-NoScaling\\\"\)"
# 


