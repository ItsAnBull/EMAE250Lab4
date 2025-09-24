clc; clear all;

func_ary = @(h) (h^3) - 30*(h^2) + 2420;

x_l = 0;

x_u = 20;

init_ary = [x_l x_u];

epsilon = 0.0001;

output = ZhouK_Lab4(1, func_ary, init_ary, epsilon)