function [ cikis ] = testP( i, j, w, b )
%UNTÝTLED2 Summary of this function goes here
%   Detailed explanation goes here
a = w(1)*i +  w(2)*j +b;
    
    if (a < 0)
        cikis = 0;
    else 
        cikis = 1;
    end

end

