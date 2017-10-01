#! /bin/bash

export CUDA_VISIBLE_DEVICES="1"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/alex/top_files/3rm.prmtop"
inpcrd="mm3rm.rst7"
restrt="h3rm.rst7"
refc="mm3rm.rst7"
mdcrd="h3rm.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
