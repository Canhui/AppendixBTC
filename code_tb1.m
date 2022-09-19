clear;
clc;

% Example: AntPool on Jul 11, 2022
Hi_Ik=31.76*24*3600; % EH/Day, ref: https://www.theblock.co/data/on-chain-metrics/bitcoin/bitcoins-daily-real-time-hashrate-by-pool  
Sigma_Hi_Ik=204.03*24*3600; % EH/Day, ref: https://www.theblock.co/data/on-chain-metrics/bitcoin
R_Ik = 0.09/(24*3600/10^6)*Sigma_Hi_Ik; % USD/(EH/Day), ref: https://www.theblock.co/data/on-chain-metrics/bitcoin
c=1.2; 

% current payoff
Fi_Ik = R_Ik*Hi_Ik/Sigma_Hi_Ik-c*Hi_Ik

% check condition
if R_Ik/(-1*Hi_Ik+Sigma_Hi_Ik)>c
    msg = 'Case 1: An existing mining pool has some hash rate to be decreased'
    decresement = -1*(Sigma_Hi_Ik-sqrt(R_Ik*(-1*Hi_Ik+Sigma_Hi_Ik)/c))
else
    msg = 'Case 2: An existing mining pool has overall hash rate to be decreased'
    decresement = -1*Hi_Ik;
end

% next payoff
Hi_Iknext=Hi_Ik+decresement
Fi_Iknext = R_Ik*(Hi_Ik+decresement)/(Sigma_Hi_Ik+decresement)-c*(Hi_Ik+decresement)
