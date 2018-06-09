function [ w, b] = perceptronF( i, j, w, b, t)
%UNTÝTLED Summary of this function goes here
%   Detailed explanation goes here
    a = w(1)*i +  w(2)*j +b;
    
    if (a < 0)
        y = 0;
    else 
        y = 1;
    end

     e = t - y;
     
     dW1 = e * i;
     dW2 = e * j;
     
     w(1) = w(1) + dW1;
     w(2) = w(2) + dW2;
     
     b = b + e;
end

