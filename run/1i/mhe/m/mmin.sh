#! /bin/bash

mdin="mmin.in"
mdout="mmin.out"
prmtop="/home/german/alex/top_files/1im.prmtop"
inpcrd="m1im.rst7"
restrt="mm1im.rst7"
refc="1im.rst7"
mdcrd="mm1im.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
