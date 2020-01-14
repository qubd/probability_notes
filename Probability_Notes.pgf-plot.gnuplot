set table "Probability_Notes.pgf-plot.table"; set format "%.5f"
set format "%.7e";; set samples 100; set dummy x; plot [x=-3:3] (gamma(0.5*(4+1))/(sqrt(4*pi)*gamma((0.5*4))))*(1+(0.25)*x*x)**(-(0.5*(4+1)));
