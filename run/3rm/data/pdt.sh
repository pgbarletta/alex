#! /bin/bash
#
#
export CUDA_VISIBLE_DEVICES="0"

for i in `cat step.list`
do
    k=`expr $i - 1`

    echo "Step:" $i

    mdin="pdt.in"
    prmtop="3rm.prmtop"

    if [ $i == 1 ]
    then

    	mdout=${i/*/"$i"p3rm.out}
	    inpcrd="31e3rm.rst7"
	    restrt=${i/*/"$i"p3rm.rst7}
	    mdcrd=${i/*/"$i"p3rm.nc}

    	pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd 

        echo "Done step:" $i

        continue	
    fi

    mdout=${i/*/"$i"p3rm.out}
    inpcrd=${i/*/"$k"p3rm.rst7}
    restrt=${i/*/"$i"p3rm.rst7}
    mdcrd=${i/*/"$i"p3rm.nc}

    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd 

    echo "Done step:" $i
done

exit 0
