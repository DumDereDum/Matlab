function ans = simple_iterations(e)

  x0 = -1;
  x = fi(x0);
     
    flag = abs(x-x0);
    printf('\n');
    while (flag >e)
      x0=x;
      x=fi(x0);
      flag = abs(x-x0);
      printf('\n');
    end

  ans=x;
endfunction
