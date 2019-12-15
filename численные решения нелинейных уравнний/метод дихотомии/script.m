printf('\n\n');
printf('function y = x.^2 + 2*x - 3 \n');
x=-10:0.01:10;
plot (x,mf(x),answer,0,'x');

a=-5;
b=0;
answer = dichotomy(-5,0,0.01);
%plot (answer,0,'x');
printf('answer bitween [-5;0] = %d',answer);
printf('\n\n');