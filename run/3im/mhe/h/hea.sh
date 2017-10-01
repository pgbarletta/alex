#! /bin/bash

export CUDA_VISIBLE_DEVICES="0"

mdin="hea.in"
mdout="hea.out"
prmtop="/home/german/alex/top_files/3im.prmtop"
inpcrd="mm3im.rst7"
restrt="h3im.rst7"
refc="mm3im.rst7"
mdcrd="h3im.nc"

pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

exit 0
