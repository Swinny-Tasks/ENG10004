t=6;
x0=90;
v0=17;
a=9.81;
x1=x0+v0*t;
x2=1/2*a*t^3;
x=x1-x2;
fprintf('The position of the ball is: %f m.\n',x)