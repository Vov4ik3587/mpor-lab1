#format short
#c=[4.2738e-03;
   #3.8878e-03;
   #5.7321e-03];
c = [1.;1.;1.];

a = [ 0.1667,  0.4286,  0.2500;
   0.2500,  0.1429,  0.2500;
   0.4167,  0.2857,  0.1250;
   0.1667,  0.1429,  0.3750 ]
b=[400; 250; 350; 100];
ctype="UUUU";
vartype="CCC";
sense=-1; #max
param.dual=3;
[y_max, q_max, status] =glpk (c, a, b, [0 ;0 ;0], [], ctype,
vartype, sense, param)
