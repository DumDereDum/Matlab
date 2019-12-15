function [ t ] = gauss( a,b )
  
  n=size(a);
  ab = [a b];

  if rank(a) ~= rank (ab)
    disp('error');
  end
  
  if rank(a)< n(1)
    disp(' inf of ansv');
  end
  
  x=zeros(n(1),1);
  
  for k=1:1:n(1)-1
    if a(k,k)==0
        l=k;
        while(1)%2.2.3
            l=l+1;
            if ((a(l,k)==0) && (l==n(1)));
                disp('The degenerate matrix')
            end
            if (a(l,k)~=0)
                break;
            end
        end%while
        c=b(k);
        b(k)=b(l);
        b(l)=c
        for j=1:1:n(1)
            c=a(k,j);
            a(k,j)=a(l,j);
            a(l,j)=c;
        end
        fprintf('%i & %i were exchange \n',k, l );
    end
   
    for i=k+1:1:n(1)
        m=a(i,k)/a(k,k);
        for j=1:1:n(1)
            a(i,j) = a(i,j) - m*a(k,j);
        end
        b(i)=b(i)-m*b(k);
    end
  
  end
  if (a(n(1),n(1))==0) %proverka 3.3
    disp('The degenerate matrix');
  end
  
  x(n(1))= b(n(1))/ a(n(1),n(1));
  for i=n(1)-1:-1:1
          s=0;
          
          for j=i+1:1:n(1)
              s=s+a(i,j)*x(j);
          end
          x(i)=(b(i)-s)/a(i,i);
  end
    
  t=x;
endfunction
