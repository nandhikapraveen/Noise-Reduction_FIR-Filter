clc;
clear;
close all;
%generation of a signal and then adding noise using the awgn() inbuilt
%funtion
t=0:0.01:2*pi;
x=sin(2*pi*1*t)+0.5*sin(2*pi*1.5*t)+0.2*sin(2*pi*3*t);
y = awgn(x,10,'measured');
%Designing a IIR filter using Window Function Method with random filter 
specifications
fp=1;%Passband frequency
fst=6;%Stopband frequency
fs=100;%Normalized Sampling frequency
wp=(2*pi*fp)/fs;
ws=(2*pi*fst)/fs;
twn=(ws-wp)/pi;%%normalize transition width choose hamming window To find 
wc=wp+twn*pi/2;
%%LENGTH(TAPS) of filter (i.e M).The filter order is always equal to the number of 
taps minus 1
N=ceil(8/twn);
%%To design type I FIR filter , taps=odd or order=even
if(mod(N,2)==0)
N=N+1;
end
alpha=(N-1)/2;
er=0.001;
for n=0:1:N-1
hd(:,n+1)=(sin(wc*(n-alpha+er)))./(pi*(n-alpha+er));
end
whm=hamming(N);
hn=hd.*whm';
%Then applying this filter on the signal to reduce the noise
filtered=filter(hn,1,y);
figure;
[H,f]=freqz(hn,1,1000,fs);
H_mag=20*log10(abs(H));
disp('window coeff');
disp(whm);
stem(whm);
title('window');
figure;
plot(f,H_mag);
xlabel('Normalized frequency');
ylabel('Magnitude');
disp('FIR Filter coeff hn');
disp(hn)
figure;
subplot(2,1,1);
plot(t, y);
xlabel('Time (s)');
ylabel('Amplitude');
title('Original Signal');
subplot(2,1,2);
plot(t, filtered);
xlabel('Time (s)');
ylabel('Amplitude');
title('Filtered Signal');
