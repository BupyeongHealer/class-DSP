>> load('speech_noise.dat');
>> x = speech_noise;
>> fs = 12000;   					%Sampling rate
>> n = 0:1:19999;
>> subplot(2,1,1);plot(n,x);
>> sound(x)
>> xlabel('Number of samples');ylabel('Sample value');grid;
>> N = length(x)						  %20000
>> f = [0:N/2]*fs/N;
>> Axk = 2*abs(fft(x))/N;Axk(1)=Axk(1)/2;  	
>> subplot(2,1,2); plot(f,Axk(1:N/2+1));
>> xlabel('Frequency (Hz)'); ylabel('Amplitude |X(f)|');grid;

>> freqz(x,1)

>> figure(3)
>> blo = fir1(133,0.14,chebwin(134,30));
>> outlo = filter(blo,1,y);
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

>> figure(4)
>> Axk = 2*abs(fft(x))/N;Axk(1)=Axk(1)/2;  	
>> subplot(2,1,2); plot(f,Axk(1:N/2+1));
>> xlabel('Frequency (Hz)'); ylabel('Amplitude |X(f)|');grid;
>> subplot(2,1,1); plot(f,Axk(1:N/2+1));
>> xlabel('Frequency (Hz)'); ylabel('Amplitude |X(f)|');grid;
>> Ayk = 2*abs(fft(outlo))/N;Ayk(1) = Ayk(1)/2;
>> subplot(2,1,2);plot(f,Ayk(1:N/2+1)); 
>> xlabel('Frequency (Hz)'); ylabel('Amplitude |Y(f)|');grid;
