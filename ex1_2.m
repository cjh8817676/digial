% Generating a single-tone sine signal xa
clear;

f0=0.1; % 10 Hz sine wave
dt=0.6; % resolution
Length=61; % Total length =0.4 sec
w = 2*pi*f0;
t=-(Length/2):0.1:(Length/2);
xa1 = [Length+1];

for i= 1 : length(t)
    if i-((length(t))/2)==0
        xa1(i) = 1;
    else
       xa1(i) = sin(w * (i - length(t)/2 )) / (pi * (i - length(t)/2 ));
    end
end
xa=sin(w*t)./(pi*t);

figure;
stem(t,xa1);
figure;
stem(t,xa);
xlabel('time t (sec)'); ylabel('xa(t)');
title('signal xa(t)');

