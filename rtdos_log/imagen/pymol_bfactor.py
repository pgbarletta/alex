from pymol import cmd

cmd.load("1r_final.pdb")
cmd.hide("lines")
cmd.show("cartoon")
cmd.set("cartoon_fancy_helices", 1)
cmd.set("ray_trace_mode",  1)
cmd.set("two_sided_lighting", "on")
cmd.set("reflect", 0)
cmd.set("ambient", 0.5)
cmd.set("ray_trace_mode",  0)
cmd.set('''ray_opaque_background''', '''off''')

inFile = open("rmsf_pymol", 'r')
stored.newB = []
for line in inFile.readlines(): stored.newB.append( float(line) )
inFile.close()
alter 1r_final, b=0.0
alter 1r_final and n. CA, b=stored.newB.pop(0)

# color the protein based on the new B Factors of the alpha carbons
cmd.spectrum("b", "1r_final and n. CA")

cmd.png("bfac_1r_final.png", width=1800, height=1100, dpi=600, ray=1)
