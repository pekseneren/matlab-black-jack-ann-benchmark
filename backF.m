function [ w, b, error ] = backF( i, j, w, b, t, LR, MK, error, dW, dB )
%ÝLERÝBESLEME Summary of this function goes here
%   Detailed explanation goes here

net1 = i*w(1) + j*w(2) + b(1);
net2 = i*w(3) + j*w(4) + b(2);

fNet1 = 1 / (1 + exp(-net1));
fNet2 = 1 / (1 + exp(-net2));

net3 = fNet1*w(5) + fNet2*w(6) + b(3);

fNet3 = 1 / (1 + exp(-net3));

% hata = 0.5*(y - fNet3)*(y - fNet3);

% if(hata<0.01 && hata>-0.01)
%     
%     error = error + 1;
%     if(error == 4)
%         return
%     end
%     return
% else
%     
% error = 0;
S = fNet3 * (1 - fNet3) * (t-fNet3);

dW(5) = (LR * fNet1 * S) + (MK *  dW(5));
w(5) = dW(5) + w(5);

dW(6) = (LR * fNet2 * S) + (MK *  dW(6));
w(6) = dW(6) + w(6);


dB(3) = (LR * 1 * S) + (MK *  dB(3));
b(3) = dB(3) + b(3);

% üst yol
S1 = fNet1 * (1 - fNet1) * S * w(5);

dW(1) = (LR * i * S1) + (MK *  dW(1));
w(1) = dW(1) + w(1);

dW(2) = (LR * j * S1) + (MK *  dW(2));
w(2) = dW(2) + w(2);

dB(1) = (LR * 1 * S1) + (MK *  dB(1));
b(1) = dB(1) + b(1);

% alt yol
S2 = fNet2 * (1 - fNet2) * S * w(6);

dW(3) = (LR * i * S2) + (MK *  dW(3));
w(3) = dW(3) + w(3);

dW(4) = (LR * j * S2) + (MK *  dW(4));
w(4) = dW(4) + w(4);

dB(2) = (LR * 1 * S2) + (MK *  dB(2));
b(2) = dB(2) + b(2);

% end
% [w(5), s1] = geriBesleme(fNet3, fNet1, hata, w(5), LR, MK, 1);
% [w(6), s2] = geriBesleme(fNet3, fNet2, hata, w(6), LR, MK, 1);
% [b(3), s3] = geriBesleme(fNet3, 1, hata, b(3), LR, MK, 1);
% 
% w(1) = geriBesleme(fNet1, i, s1, w(1), LR, MK, w(5));
% w(2) = geriBesleme(fNet1, i, s1, w(2), LR, MK, w(5));
% b(1) = geriBesleme(fNet1, 1, s1, b(1), LR, MK, w(5));
% 
% w(3) = geriBesleme(fNet2, j, s2, w(3), LR, MK, w(6));
% w(4) = geriBesleme(fNet2, j, s2, w(4), LR, MK, w(6));
% b(2) = geriBesleme(fNet2, 1, s1, b(2), LR, MK, w(6));

end