function ans = Zeidel(A,b,e)
  
  it = 0;
  check = 10;
  n = size(A);
  
  X=zeros(n(1),1);
  
  while(check>e)
    it=it+1;
    %disp(it);
    X_old = X;
        for i = 1:1:n(1)
            sum = 0;
            for j = 1:1:n(2)
                if(i ~= j)
                    sum = sum + A(i,j)*X(j);
                end    
            end
            X(i) = (b(i) - sum) / A(i,i);
         end
    
        check  = abs(X(1)-X_old(1));
        for i = 1:1:n(1)
            if(abs(X(i)-X_old(i)) < check)
                check = (abs(X(i)-X_old(i)));   
            end
        end      
  end 
  
  printf('coll iterations - %d\n',it);
  disp(X);
  
endfunction
