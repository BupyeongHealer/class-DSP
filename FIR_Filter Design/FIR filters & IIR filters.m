%% read mp3 file
[out fs] = audioread('LEGENDSNEVER DIE.mp3');
N = 40000;    % data cut
k = 1200000;
data = out(40000:80000,1);
data2 = out(40000+k:200000+k,1);
%sound(data2,fs);
%sound(data/max(abs(data2)),fs);  % play
filename = 'C:\Users\wonde\Desktop\original.mp4';
audiowrite(filename,data2,fs);


%% Spectrum (one-sided)
N=length(data);
f=[0:N/2]*fs/N;
Axk=2*abs(fft(data))/N;Axk(1)=Axk(1)/2;
figure(1);
subplot(2,1,1);
plot(data);
title('original sound data');
subplot(2,1,2);
plot(f,Axk(1:N/2+1));grid
title('frequency response of original data');

freqz(data,1);

%% Filtering 
1. lowpass (Ex 7.8)

figure(3);
blo = fir1(6001,0.005,hann(6002));
outlo = filter(blo,1,data);
subplot(2,1,1);
t = (0:length(data)-1)/fs;
plot(t,data);
title('Original Signal');
ys = ylim;;
subplot(2,1,2);
plot(t, outlo);
title('Lowpass Filtered Signal');
xlabel('Time (s)');
ylim(ys);

figure(4);
subplot(2,1,2); plot(f,Axk(1:N/2+1));
xlabel('Frequency (Hz)'); ylabel('Amplitude |X(f)|');grid;
subplot(2,1,1); plot(f,Axk(1:N/2+1));
title('Original Signal');
xlabel('Frequency (Hz)'); ylabel('Amplitude |X(f)|');grid;
Ayk = 2*abs(fft(outlo))/N;Ayk(1) = Ayk(1)/2;
subplot(2,1,2);plot(f,Ayk(1:N/2+1)); 
title('Lowpass Filtered Signal');
xlabel('Frequency (Hz)'); ylabel('Amplitude |Y(f)|');grid;

sound(outlo)

% 2. highpass (Ex 7.9)

figure(5);
blo = fir1(6000,0.005,'high',hann(6001));
outlo = filter(blo,1,data);
subplot(2,1,1);
t = (0:length(data)-1)/fs;
plot(t,data);
title('Original Signal');
ys = ylim;;
subplot(2,1,2);
plot(t, outlo);
title('Highpass Filtered Signal');
xlabel('Time (s)');
ylim(ys);

figure(6);
subplot(2,1,2); plot(f,Axk(1:N/2+1));
xlabel('Frequency (Hz)'); ylabel('Amplitude |X(f)|');grid;
subplot(2,1,1); plot(f,Axk(1:N/2+1));
title('Original Signal');
xlabel('Frequency (Hz)'); ylabel('Amplitude |X(f)|');grid;
Ayk = 2*abs(fft(outlo))/N;Ayk(1) = Ayk(1)/2;
subplot(2,1,2);plot(f,Ayk(1:N/2+1)); 
title('Highpass Filtered Signal');
xlabel('Frequency (Hz)'); ylabel('Amplitude |Y(f)|');grid;

3. bandpass (Ex 7.10)

figure(7);
blo = fir1(6001,[0.005 0.15],'bandpass',hann(6002));
outlo = filter(blo,1,data);
subplot(2,1,1);
t = (0:length(data)-1)/fs;
plot(t,data);
title('Original Signal');
ys = ylim;;
subplot(2,1,2);
plot(t, outlo);
title('Bandpass Filtered Signal');
xlabel('Time (s)');
ylim(ys);

figure(8);
subplot(2,1,2); plot(f,Axk(1:N/2+1));
xlabel('Frequency (Hz)'); ylabel('Amplitude |X(f)|');grid;
subplot(2,1,1); plot(f,Axk(1:N/2+1));
title('Original Signal');
xlabel('Frequency (Hz)'); ylabel('Amplitude |X(f)|');grid;
Ayk = 2*abs(fft(outlo))/N;Ayk(1) = Ayk(1)/2;
subplot(2,1,2);plot(f,Ayk(1:N/2+1)); 
title('Bandpass Filtered Signal');
xlabel('Frequency (Hz)'); ylabel('Amplitude |Y(f)|');grid;

sound(outlo)


%% Echo
% Prob 6.32 

% FIR
R = 7000;
%Difference equation: y[n]=x[n]+ax[n-R]
%Equivalently, by the transfer function H(z)=1+az^(-R)
num=[1,zeros(1,R-1),0.8];
den=[1];
%The output of the FIR filter is computed using the function 'filter'
d1 = filter(num,den,data2);
soundsc(d1,fs);
filename = 'C:\Users\wonde\Desktop\FIR.mp4';
audiowrite(filename,d1,fs);

% IIR
num=[0,zeros(1,7000-1),1]
den=[1,zeros(1,7000-1),-0.8];
d1=filter(num,den,data2);
soundsc(d1,fs);
filename = 'C:\Users\wonde\Desktop\IIR.mp4';
audiowrite(filename,d1,fs);
