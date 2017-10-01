#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/alex/top_files/5rm.prmtop"
inpcrd="mm5rm.rst7"
restrt="h5rm.rst7"
refc="mm5rm.rst7"
mdcrd="h5rm.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
