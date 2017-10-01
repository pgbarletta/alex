#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/alex/top_files/3rm.prmtop"
inpcrd="3rm.rst7"
restrt="m3rm.rst7"
refc="3rm.rst7"
mdcrd="m3rm.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
