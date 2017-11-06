#! /bin/bash
#
# Perform 29 steps of equilibration until all restraints have been taken out.
# Then, run ~1.96 ns until 5ns have passed since the start of the minimization.
#
export CUDA_VISIBLE_DEVICES="1"
i=29
starting_mdin="0equ.in"
for step in `cat step.list`
do
    
    i=`expr $i + 1`
    k=`expr $i - 1`

    echo "Step:" $i

    if [ $i == 1 ]
    then

		mdin=${i/*/"$i"equ.in}		
    	mdout=${i/*/"$i"equ.out}
	    prmtop="/home/german/alex/top_files/1r.prmtop"
	    inpcrd=${i/*/../h/h1r.rst7}
	    restrt=${i/*/"$i"e1r.rst7}
    	refc=${i/*/../h/h1r.rst7}
	    mdcrd=${i/*/"$i"e1r.nc}

		# In this 1st step mdin = starting_mdin
	    sed "s/50\.0/${step}/" $starting_mdin > $mdin

    	pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

        echo "Done step:" $i

        continue	
    fi

    if [[ $i == 30 || $i == 31 ]]
    then

        mdin=${i/*/"$i"equ.in}
        mdout=${i/*/"$i"equ.out}
        prmtop="/home/german/alex/top_files/1r.prmtop"
        inpcrd=${i/*/"$k"e1r.rst7}
        restrt=${i/*/"$i"e1r.rst7}
        refc=${i/*/"$k"e1r.rst7}
        mdcrd=${i/*/"$i"e1r.nc}

        pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -x $mdcrd 

        echo "Done single step:" $i

		continue	
    fi


    mdin=${i/*/"$i"equ.in}
    mdout=${i/*/"$i"equ.out}
    prmtop="/home/german/alex/top_files/1r.prmtop"
    inpcrd=${i/*/"$k"e1r.rst7}
    restrt=${i/*/"$i"e1r.rst7}
    refc=${i/*/"$k"e1r.rst7}
    mdcrd=${i/*/"$i"e1r.nc}

    sed "s/50\.0/${step}/" $starting_mdin > $mdin

    pmemd.cuda -O -i $mdin -o $mdout -p $prmtop -c $inpcrd -r $restrt -ref $refc -x $mdcrd 

    echo "Done step:" $i
done

exit 0