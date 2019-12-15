function res = Newton(x,a,b,e)

while (abs(mf(x))>e)
  x = x - mf(x)/pr1(x);
endwhile

res = x; 

endfunction
