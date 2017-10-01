#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/alex/top_files/1im.prmtop"
inpcrd="mm1im.rst7"
restrt="h1im.rst7"
refc="mm1im.rst7"
mdcrd="h1im.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
