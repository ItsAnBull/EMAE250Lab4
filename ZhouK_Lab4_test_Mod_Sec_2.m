clc; clear all;

f1 = @(a) a(1)^2 + a(2) - 1;

f2 = @(b) b(2) + 3*cos(b(1));

func_ary = {f1 f2};

x = 1;

y = 1;

init_ary = [x y];

epsilon = 0.0001;

a = ZhouK_Lab4(4, func_ary, init_ary, epsilon)