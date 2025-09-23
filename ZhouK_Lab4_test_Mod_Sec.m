clc; clear all;

f1 = @(c1,c2,x1,x2) (c1 + c2 - 2);

f2 = @(c1,c2,x1,x2) (c1*x1 + c2*x2);

f3 = @(c1,c2,x1,x2) (c1)*(x1^2) + (c2)*(x2^2) - (2/3);

f4 = @(c1,c2,x1,x2) (c1)*(x1^3) +(c2)&(x2^3);

func_ary = {f1 f2 f3 f4};

c1 = 0.5;

c2 = -2;

x1 = -0.25;

x2 = 0.25;

init_ary = [c1 c2 x1 x2];

epsilon = 0.01;

a = ZhouK_Lab4(4, func_ary, init_ary, 0.01)