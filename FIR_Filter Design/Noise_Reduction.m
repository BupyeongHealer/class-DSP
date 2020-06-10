>> %7.4.1 Noise Reduction
>> fs = 8000;   %Sampling rate
>> T = 1/fs;    %Sampling period
v = sqrt(0.1)*randn(1,250);   			%Generate Gaussian random noise
n = 0:1:249;
x = sqrt(2)*sin(2*pi*500*n*T)+v;  			%Generate 500Hz + noise

>> freqz(x,1)					%Digital frequency response

>> figure(3)					%Time domain
>> blo = fir1(133,0.17,chebwin(134,30));
>> outlo = filter(blo,1,x);
>> subplot(2,1,1);
>> t = (0:length(x)-1)/fs;
>> plot(t,x);
>> title('Original Signal');
>> ys = ylim;;
>> subplot(2,1,2)
>> plot(t,outlo);
>> title('Lowpass Filtered Signal');
>> xlabel('Time (s)');
>> ylim(ys);

>> N= length(x);
>> f = [0:N/2]*fs/N;
>> figure(4)						%frequency domain
>> Axk = 2*abs(fft(x))/N;Axk(1)=Axk(1)/2;  	
subplot(2,1,2); plot(f,Axk(1:N/2+1));
xlabel('Frequency (Hz)'); ylabel('Amplitude |X(f)|');grid;
subplot(2,1,1); plot(f,Axk(1:N/2+1));
xlabel('Frequency (Hz)'); ylabel('Amplitude |X(f)|');grid;
Ayk = 2*abs(fft(outlo))/N;Ayk(1) = Ayk(1)/2;
subplot(2,1,2);plot(f,Ayk(1:N/2+1)); 
xlabel('Frequency (Hz)'); ylabel('Amplitude |Y(f)|');grid;
