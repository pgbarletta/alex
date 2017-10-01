#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/alex/top_files/3im.prmtop"
inpcrd="m3im.rst7"
restrt="mm3im.rst7"
refc="3im.rst7"
mdcrd="mm3im.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
