clc; clear all;

func_ary = @(h) (h^3) - 30*(h^2) + 2420;

x_prev = 0;

x_curr = 5;

init_ary = [x_prev x_curr];

epsilon = 0.0001;

output = ZhouK_Lab4(2, func_ary, init_ary, epsilon)