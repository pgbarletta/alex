#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/alex/top_files/1i.prmtop"
inpcrd="../m/mm1i.rst7"
restrt="h1i.rst7"
refc="../m/mm1i.rst7"
mdcrd="h1i.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
