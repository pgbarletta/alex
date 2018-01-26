# prts de alex

## Descripción

Se corrieron 1000ns de MD para evaluar la estabilidad del modelo. Las estructuras secundarias se mantuvieron estables durante la dinámica, salvo la primer hebra beta 1 (HB1) del N-terminal q tuvo pasajes de orden-desorden, lo cual es esperable dado q se encuentra en el N-terminal. Gracias a estos pasajes, la HB1 y la hélice alfa 2 (HA2) intercambian posiciones, quedando la HB1 en la cara externa de la proteína y la HA2 acercándose a la hélice alfa 1 (HA1). Nos queda la pregunta sobre la funcionalidad de estas 2 conformaciones.


## Methods

Root Mean Squared Distance
Root Mean Square Distance (RMSD) is a measure of conformational heterogeneity. RMSD   between 2 proteins of N atoms is calculated as

RMSD =   sqrt(Σ(pi - qi)^2)

Where pi and qi are the coordinates of the ith atoms of each protein or conformation of the same protein.  RMSD may be calculated considering all atoms or just the alpha carbon atoms, as in this case.

Root Mean Squared Fluctuation

Root Mean Square Fluctuation (RMSF) is a measure of flexibility. RMSF of an ith atom on a protein along a trajectory of K frames may be calculated as:

RMSFi =  sqrt(Σ(pi - deltai^2)

Where pi are the coordinates of the ith atom and delta the average position along the trajectory. RMSF may be calculated considering all atoms or just the alpha carbon atoms, as in this case.


In order to evaluate the obtained model under physiological conditions, we performed a molecular dynamic (MD) simulation on the best model using the AMBER 16 software package71,72. Ions were added for charge neutralization. Each system was solvated with explicit TIP3P74 water molecules in a truncated octahedric periodic box large enough to contain the protein and 10 Å of solvent on all sides. The all-hydrogen topology was obtained with the Amber ff14SB75,76 force field. A 2 fs time step was used and the SHAKE algorithm was applied to all bonds involving hydrogen. Periodic boundary conditions and particle-mesh Ewald (PME) sums were used and a cutoff of 10 Å was applied to nonbonded interactions.
Minimization was performed by 100-step of steepest-descent and 400-step conjugate gradient minimizations applying constraints to the protein atoms. This was followed by a 400-step unconstrained conjugate gradient minimization.
The systems was then heated for 150 ps until it reached the final temperature of 300 K. During heating, a harmonic restraint of 50.0 kcal/(mol·Å2) was applied to the protein atoms.
The system was equilibrated at constant pressure using 29 steps of 100 ps and reducing the restraint on each step. After the last step with restraints, all restraints were lifted and a final
Equilibration run was performed until reaching 5 ns of total equilibration time at a constant temperature of 300 K using Andersen barostat and Langevin thermostat with a γ collision frequency of 2 ps−1.
Finally, a 1000 ns MD simulations is performed, collecting equilibrated configurations at 10 ps intervals.

(71) Salomon-Ferrer, R.; Case, D.; Walker, R. An Overview of the
Amber Biomolecular Simulation Package. WIREs Comput. Mol. Sci.
2013, 3, 198−210.
(72) Case, D.; Cheatham, T. I.; Darden, T.; Gohlke, H.; Luo, R.;
Merz, K. J.; Onufriev, A.; Simmerling, C.; Wang, B.; Woods, R. The
Amber Biomolecular Simulation Programs. J. Comput. Chem. 2005, 26,
1668−1688.
(74) Jorgensen, W.; Chandrasekhar, J.; Madura, J.; Impey, R.; Klein,
M. Comparison of Simple Potential Functions for Simulating Liquid
Water. J. Chem. Phys. 1983, 79, 926−935.
(75) Ponder, J.; Case, D. Force Fields for Protein Simulations. Adv.
Protein Chem. 2003, 66, 27−85.
(76) Maier, J.; Martinez, C.; Kasavajhala, K.; Wickstrom, L.; Hauser,
K.; Simmerling, C. ff14SB: Improving the Accuracy of Protein Side
Chain and Backbone Parameters from ff99SB. J. Chem. Theory Comput.
2015, 11, 3696−3713.
(77) Amadei, A., Ceruso, M. A., & Di Nola, A. (1999). On the convergence of the conformational coordinates basis set obtained by the Essential Dynamics analysis of proteins’ molecular dynamics simulations. Proteins: Structure, Function and Genetics, 36(4), 419–424.



