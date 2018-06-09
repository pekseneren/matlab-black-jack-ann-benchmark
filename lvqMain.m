% i = [0 0 1 1];
% j = [0 1 0 1];
% y = [0 1 1 0];

w1 = [rand rand];
w2 = [rand rand];

for k = 1:iterasyon
 for a = 1:dataSize
     
     [w1, w2] = lvqF(i(a), j(a), w1, w2, t(a), LR);
     
 end
end



lvqDeneme = [0 0 0 0];
for c = 1:4
     
    lvqDeneme(c) = testLVQ(denemeI(c), denemeJ(c), w1, w2); 
     
end
