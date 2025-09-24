clc; clear all;

f1 = @(a) a(1) + a(2) - 2;

f2 = @(b) b(1)*b(3) + b(2)*b(4);

f3 = @(c) c(1)*(c(3)^2) + c(2))*(c(4)^2 - (2/3);

f4 = @(d) d(1)*(d(3)^3) + d(2)*(d(4)^3);

func_ary = {f1 f2 f3 f4};

c1 = 0.5;

c2 = -2;

x1 = -0.25;

x2 = 0.25;

init_ary = [c1 c2 x1 x2];

epsilon = 0.0001;

a = ZhouK_Lab4(4, func_ary, init_ary, epsilon)