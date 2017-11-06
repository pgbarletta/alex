#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/alex/top_files/1r.prmtop"
inpcrd="1r.rst7"
restrt="m1r.rst7"
refc="1r.rst7"
mdcrd="m1r.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
