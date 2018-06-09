%  i = [0 0 1 1];
%  j = [0 1 0 1];
%  t = [0 1 1 0];

w = [rand rand rand rand rand rand];
dW = [0 0 0 0 0 0];
dB = [0 0 0];
b = [rand rand rand];

MK = 0.7;
error = 0;

for k = 1:iterasyon
    error = 0;
 for a = 1:dataSize
     
     [w, b, error] = backF(i(a), j(a), w, b, t(a), LR, MK,error, dW, dB);
     
 end
    if(error == 4)
        break
    end
end


backDeneme = [0 0 0 0];
for c = 1:4
     
    backDeneme(c) = testBP(denemeI(c), denemeJ(c), w, b); 
     
end
