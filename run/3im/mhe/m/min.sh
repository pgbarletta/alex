#! /bin/bash

mdin="min.in"
mdout="min.out"
prmtop="/home/german/alex/top_files/3im.prmtop"
inpcrd="3im.rst7"
restrt="m3im.rst7"
refc="3im.rst7"
mdcrd="m3im.crd"

pmemd -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
