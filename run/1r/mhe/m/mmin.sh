#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/alex/top_files/1r.prmtop"
inpcrd="m1r.rst7"
restrt="mm1r.rst7"
refc="1r.rst7"
mdcrd="mm1r.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
