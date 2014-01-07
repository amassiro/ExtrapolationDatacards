#! /bin/sh

cp -r ../summer2013/couplings/vhww/125.6/* old_cards/;
cp -r ../summer2013/couplings/hww2l2v/125.6/* old_cards/;

rm old_cards/*7TeV*;
rm old_cards/zh3l2j_cut_*.txt;
rm old_cards/hwwof_?j_cut_8TeV.txt;
rm old_cards/hwwof_vh2j_cut_8TeV.txt;
rm old_cards/vh3l?_cut_8TeV.txt;

python ModifyDatacard.py -f old_cards -o new_cards_120ifb  -i OfficialScale8to13TeV.py  -s 6.20;

python ModifyDatacard.py -f old_cards -o new_cards_30ifb  -i OfficialScale8to13TeV.py  -s 1.55;
