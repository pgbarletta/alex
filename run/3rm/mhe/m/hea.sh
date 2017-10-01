#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="256l.prmtop"
inpcrd="mm256l.rst7"
restrt="h256l.rst7"
refc="mm256l.rst7"
mdcrd="h256l.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
