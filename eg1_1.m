% Case study 1: Increase dramatically and profitable

% clear environment
clear;
clc;

% Example
Hx_Ik=16;
Hy_Ik=25;
Hz_Ik=0;
R_Ik=900;
c=2;

% Assumption 1
% Hx_Ik>0; Hy_Ik>0; Hz_Ik>0;

% Assumption 2
% Hx_Ik<(Hx_Ik+Hy_Ik+Hz_Ik)*(1-c*(Hx_Ik+Hy_Ik+Hz_Ik)/R_Ik);
% Hy_Ik<(Hx_Ik+Hy_Ik+Hz_Ik)*(1-c*(Hx_Ik+Hy_Ik+Hz_Ik)/R_Ik);

% Assumption 3
% R_Ik1=R_Ik;

% Optimal Strategy
Hx_Ik1=Hx_Ik+sqrt(R_Ik*(-Hx_Ik+Hx_Ik+Hy_Ik+Hz_Ik)/c)-Hx_Ik-Hy_Ik-Hz_Ik;
Hy_Ik1=Hy_Ik+sqrt(R_Ik*(-Hy_Ik+Hx_Ik+Hy_Ik+Hz_Ik)/c)-Hx_Ik-Hy_Ik-Hz_Ik;
Hz_Ik1=Hz_Ik+sqrt(R_Ik*(Hx_Ik+Hy_Ik+Hz_Ik)/c)-Hx_Ik-Hy_Ik-Hz_Ik;

% Case 1: Increase, Increase, Increase
EFx_Ik1=R_Ik*Hx_Ik1/(Hx_Ik1+Hy_Ik1+Hz_Ik1)-c*Hx_Ik1;
EFy_Ik1=R_Ik*Hy_Ik1/(Hx_Ik1+Hy_Ik1+Hz_Ik1)-c*Hy_Ik1;
EFz_Ik1=R_Ik*Hz_Ik1/(Hx_Ik1+Hy_Ik1+Hz_Ik1)-c*Hz_Ik1;

% Case 2: Increase, Unchange, Increase
EFx_Ik1=R_Ik*Hx_Ik1/(Hx_Ik1+Hy_Ik+Hz_Ik1)-c*Hx_Ik1;
EFy_Ik1=R_Ik*Hy_Ik/(Hx_Ik1+Hy_Ik+Hz_Ik1)-c*Hy_Ik;
EFz_Ik1=R_Ik*Hz_Ik1/(Hx_Ik1+Hy_Ik+Hz_Ik1)-c*Hz_Ik1;

% Case 3: Unchange, Increase, Increase
EFx_Ik1=R_Ik*Hx_Ik/(Hx_Ik+Hy_Ik1+Hz_Ik1)-c*Hx_Ik;
EFy_Ik1=R_Ik*Hy_Ik1/(Hx_Ik+Hy_Ik1+Hz_Ik1)-c*Hy_Ik1;
EFz_Ik1=R_Ik*Hz_Ik1/(Hx_Ik+Hy_Ik1+Hz_Ik1)-c*Hz_Ik1;

% Case 4: Unchange, Unchange, Increase
EFx_Ik1=R_Ik*Hx_Ik/(Hx_Ik+Hy_Ik+Hz_Ik1)-c*Hx_Ik;
EFy_Ik1=R_Ik*Hy_Ik/(Hx_Ik+Hy_Ik+Hz_Ik1)-c*Hy_Ik;
EFz_Ik1=R_Ik*Hz_Ik1/(Hx_Ik+Hy_Ik+Hz_Ik1)-c*Hz_Ik1;

% Case 5: Increase, Increase, Unchange
EFx_Ik1=R_Ik*Hx_Ik1/(Hx_Ik1+Hy_Ik1+Hz_Ik)-c*Hx_Ik1;
EFy_Ik1=R_Ik*Hy_Ik1/(Hx_Ik1+Hy_Ik1+Hz_Ik)-c*Hy_Ik1;
EFz_Ik1=R_Ik*Hz_Ik/(Hx_Ik1+Hy_Ik1+Hz_Ik)-c*Hz_Ik;

% Case 6: Increase, Unchange, Unchange
EFx_Ik1=R_Ik*Hx_Ik1/(Hx_Ik1+Hy_Ik+Hz_Ik)-c*Hx_Ik1;
EFy_Ik1=R_Ik*Hy_Ik/(Hx_Ik1+Hy_Ik+Hz_Ik)-c*Hy_Ik;
EFz_Ik1=R_Ik*Hz_Ik/(Hx_Ik1+Hy_Ik+Hz_Ik)-c*Hz_Ik;

% Case 7: Unchange, Increase, Unchange
EFx_Ik1=R_Ik*Hx_Ik/(Hx_Ik+Hy_Ik1+Hz_Ik)-c*Hx_Ik;
EFy_Ik1=R_Ik*Hy_Ik1/(Hx_Ik+Hy_Ik1+Hz_Ik)-c*Hy_Ik1;
EFz_Ik1=R_Ik*Hz_Ik/(Hx_Ik+Hy_Ik1+Hz_Ik)-c*Hz_Ik;

% Case 8: Unchange, Unchange, Unchange
EFx_Ik1=R_Ik*Hx_Ik/(Hx_Ik+Hy_Ik+Hz_Ik)-c*Hx_Ik;
EFy_Ik1=R_Ik*Hy_Ik/(Hx_Ik+Hy_Ik+Hz_Ik)-c*Hy_Ik;
EFz_Ik1=R_Ik*Hz_Ik/(Hx_Ik+Hy_Ik+Hz_Ik)-c*Hz_Ik;