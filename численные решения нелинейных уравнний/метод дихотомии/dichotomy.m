function [res] = dichotomy(a,b,e)

c=(a+b)/2;

while (abs(mf(c))>=e)
	if (mf(c)*mf(a)<0)
    	b=c;
	else
	  a=c;
	end 
 	c=(a+b)/2; 
end
res = c;
end

