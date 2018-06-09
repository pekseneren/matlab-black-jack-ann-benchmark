function [ cikis ] = testLVQ( i, j, w1, w2 )
%UNTÝTLED5 Summary of this function goes here
%   Detailed explanation goes here
    d1 = sqrt( (i - w1(1))^2 + (j - w1(2))^2);
    d2 = sqrt( (i - w2(2))^2 + (j - w2(2))^2);
    
    minD = min(d1,d2);
    
    if(minD == d1)
        cikis = 0;
    else
        cikis = 1;
    end

end

