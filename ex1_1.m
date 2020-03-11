% Generating a single-tone sine signal xa
clear;

f0=0.1; % 10 Hz sine wave
dt=0.01; % resolution
Length=6; % Total length =0.4 sec
w = 2*pi*f0;
t=-(Length/2):dt:(Length/2);


xa=sin(pi*t)./(pi*t);


plot(t,xa);
xlabel('time t (sec)'); ylabel('xa(t)');
title('signal xa(t)');

