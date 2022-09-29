#format short
c=[12000.;10000.;15000.];

a = [ 0.1667,  0.4286,  0.2500;
   0.2500,  0.1429,  0.2500;
   0.4167,  0.2857,  0.1250;
   0.1667,  0.1429,  0.3750 ]
b=[400; 250; 350; 100];
ctype="UUUU";
vartype="CCC";
sense=-1;
param.dual=3;
[y_max, q_max, status] =glpk (c, a, b, [0 ;0 ;0], [], ctype,
vartype, sense, param)
