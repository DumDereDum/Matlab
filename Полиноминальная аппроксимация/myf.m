function y = myf(cof,x)
  n=size(cof);
  y=0;
  for i=1:1:n(1)
    y=y+cof(i)*x.^(i-1);
  end   
  
endfunction
