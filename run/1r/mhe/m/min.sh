#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/alex/top_files/1im.prmtop"
inpcrd="1im.rst7"
restrt="m1im.rst7"
refc="1im.rst7"
mdcrd="m1im.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
