clear
data = importdata('BlackJackdata.txt');
i = data(:,1);
j = data(:,2);
t = data(:,3);
% i = [0 1 0 1];
% j = [0 0 1 1];
% t = [0 1 1 0];

dataSize = size(i);
dataSize = max(dataSize);

LR = 0.4;

iterasyon = 50;

denemeI = [11 10 7 11];
denemeJ = [6 1 1 8];
asilCikti = [0 0 0 0];

for z=1:4
    if((denemeI(z) + denemeJ(z))>16)
        asilCikti(z) = 0;
    else
        asilCikti(z) = 1;
    end
end

%XOR
% 
% denemeI = [0 1 0 1];
% denemeJ = [0 0 1 1];
% asilCikti = [0 1 1 0];

backMain;
lvqMain;
perMain;

keepvars = {'perDeneme', 'backDeneme', 'lvqDeneme', 'asilCikti', 'iterasyon', 'dataSize'};

clearvars('-except', keepvars{:});

clc