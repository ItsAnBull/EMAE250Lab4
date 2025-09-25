clc; clear all;

func_ary = @(h) (h^3) - 30*(h^2) + 2420;

x_ante = 0;

x_prev = 2.5;

x_curr = 5;

init_ary = [x_ante x_prev x_curr];

epsilon = 0.0001;

output = ZhouK_Lab4(3, func_ary, init_ary, epsilon)