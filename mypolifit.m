function [ coef ] = mypolifit( x,y )

n=size(x);

x1=zeros(n(1),n(1));

for i=1:1:n(1)
    for j=1:1:n(1)
        x1(i,j)=power(x(i),j-1);
    end
end

%прямой ход
for k=1:1:n(1)-1
    for i=k+1:1:n(1)
        m=x1(i,k)/x1(k,k);
        for j=1:1:n(1)
            x1(i,j) = x1(i,j) - m*x1(k,j);
        end
        y(i)=y(i)-m*y(k);
    end
end

%обрантный ход
f(n(1))=y(n(1))/x1(n(1),n(1));
for i=n(1)-1:-1:1
    s=0;
    for j=i+1:1:n(1)
        s=s+x1(i,j)*f(j);
    end
f(i)=(y(i)-s)/x1(i,i);
end
coef=f;
end

%--------------------------------------------------

function [ y ] = fun_for_mypolifit( z,x )

n=size(z);
y1=0;
for i=1:1:n(2)
    a=power(x,i-1);
    y1=y1+z(i)*a;
end 
y=y1;    
end

%--------------------------------------------------

%Script_for_mypolifit

x=[1;2;3];
y=[1;-1;1];

fun=mypolifit(x,y);
n=size(x);

x=-10:0.1:10;
y=fun_for_mypolifit(fun, x);

plot(x,y,'r');
grid on;
legend('хуйня какая-то');
