#! /bin/bash

export CUDA_VISIBLE_DEVICES="1"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/alex/top_files/1r.prmtop"
inpcrd="../m/mm1r.rst7"
restrt="h1r.rst7"
refc="../m/mm1r.rst7"
mdcrd="h1r.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
