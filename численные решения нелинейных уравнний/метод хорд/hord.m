function ans = hord (a,b,e)
  
  if (mf(a) * pr2(a) > 0)
    c=a;
  elseif (mf(b) * pr2(b) > 0)
    c=b;
  endif
  
  if (mf(a) * pr2(a) < 0)
    x=a;
  elseif (mf(b) * pr2(b) < 0)
    x=b;
  endif
  
   dx = (mf(x)*(x-c)) / (mf(x) - mf(c));
   x = x - dx; 
  
  while (abs(dx)>e)
   dx = (mf(x)*(x-c)) / (mf(x) - mf(c));
   x = x - dx; 
  end
  
  ans = x;
  
endfunction
