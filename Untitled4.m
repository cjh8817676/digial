% Generating a single-tone sine signal xa
clear;

f0=0.1; % 10 Hz sine wave
dt=0.6; % resolution
Length=60; % Total length =0.4 sec
w = 2*pi*f0;
t=-(Length/2):0.1:(Length/2);
xa1 = [];

for i= 1 : length(t)
   tt = t(i);
   if (tt ==0)
       ff = 1;
   else
       ff = sin(pi * tt) ./ (pi * tt);
   end
   xa1 = [xa1 ff];
end
xa=sin(w*t)./(pi*t);

figure;
stem(xa1);
figure;
stem(t,xa);
xlabel('time t (sec)'); ylabel('xa(t)');
title('signal xa(t)');

