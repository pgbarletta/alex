#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/alex/top_files/5rm.prmtop"
inpcrd="5rm.rst7"
restrt="m5rm.rst7"
refc="5rm.rst7"
mdcrd="m5rm.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
