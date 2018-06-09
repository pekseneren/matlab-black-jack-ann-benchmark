function [ cikis ] = testBP( i, j, w, b )
%TESTBP Summary of this function goes here
%   Detailed explanation goes here
net1 = i * w(1) + j * w(2) + b(1);
net2 = i * w(3) + j * w(4) + b(2);

fNet1 = 1 / (1 + exp(-net1));
fNet2 = 1 / (1 + exp(-net2));


net3 = fNet1 * w(5) + fNet2 * w(6) + b(3);

fNet3 = 1 / (1 + exp(-net3));
cikis = fNet3;

end

