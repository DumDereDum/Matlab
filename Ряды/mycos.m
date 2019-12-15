function y = mycos(x,e)
  i=-1;
  sum =0;
  
  point = 10;
  
  while(abs(point)>e)
    i=i+1;
    point = (((-1)^i) * x^(2*i)) / factorial(2*i);
    sum=sum+point;
  end 
  y=sum;
endfunction
нада
паук