function ans = unknown_coefficient(X,Y)
  n=size(X);
  
  for i=1:1:n(1)
    for j=1:1:n(1)
      
      A(i,j)=X(i)^(j-1);
      
    end   
  end  
  
  ans=A\Y;
  
endfunction
