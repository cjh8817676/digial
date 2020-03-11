% Generating a single-tone sine signal xa
clear;


t=0:0.01:1;
xa=sin(2*10*pi*t) + sin(2*30*pi*t);


stem(t,xa);
xlabel('time t (sec)'); ylabel('xa(t)');
title('signal xa(t)');

