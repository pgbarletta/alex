#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/alex/top_files/1i.prmtop"
inpcrd="1i.rst7"
restrt="m1i.rst7"
refc="1i.rst7"
mdcrd="m1i.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
