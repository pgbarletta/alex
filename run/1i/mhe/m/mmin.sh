#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/alex/top_files/1i.prmtop"
inpcrd="m1i.rst7"
restrt="mm1i.rst7"
refc="1i.rst7"
mdcrd="mm1i.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
