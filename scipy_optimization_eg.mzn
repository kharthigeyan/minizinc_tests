 % Reference: https://www.youtube.com/watch?v=cXHvC_FGx24

var 1.0..5.0: x1;
var 1.0..5.0: x2;
var 1.0..5.0: x3;
var 1.0..5.0: x4;

constraint x1*x1 + x2*x2 + x3*x3 + x4*x4 = 40.0;
constraint x1*x2*x3*x4 >= 25.0;

solve minimize x1*x4*(x1+x2+x3)+x3;

% This code is not giving correct solution
% Actual solution is
% x1=1.0
% x2=4.7429961
% x3=3.82115462
% x4=1.37940765

% Problem: this code is running forever and not returning an optimal solution.
% Tried to solve the problem using "Gecode 6.1.0" solver
