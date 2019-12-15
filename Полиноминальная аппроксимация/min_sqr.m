function ans = min_sqr(X,Y)
  
  n=size(X);
  
  A=zeros(n(1));
  
  for i=1:1:n(1)
    for j=1:1:n(1)
      for k=1:1:n(1)
        A(i,j)=A(i,j) + X(k)^(j+i-2); 
      end
    end   
  end  
  
  disp(A)
  
  B=zeros(n(1),1);
  for i=1:1:n(1)
    for k=1:1:n(1)   
      B(i,1)=B(i,1) +Y(k)*X(k)^(i-1); 
    end   
  end 
  
  disp(B)
  
  ans=A\B;
  
endfunction
