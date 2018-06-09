w = [rand, rand];
b = rand;

for k = 1:iterasyon
for a = 1:dataSize
    [w, b] = perceptronF(i(a), j(a), w, b, t(a));
end
end

perDeneme = [0 0 0 0];
for c = 1:4
     
    perDeneme(c) = testP(denemeI(c), denemeJ(c), w, b); 
     
end
