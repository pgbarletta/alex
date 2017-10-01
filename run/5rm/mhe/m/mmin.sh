#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/alex/top_files/5rm.prmtop"
inpcrd="m5rm.rst7"
restrt="mm5rm.rst7"
refc="5rm.rst7"
mdcrd="mm5rm.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
