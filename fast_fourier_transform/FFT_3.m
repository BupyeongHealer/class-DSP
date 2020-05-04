>> fs = 8000;
>> T = 1/fs;
>> t=0:T:0.1;
>> x1 = 5*cos(2*pi*500*t);
>> x2 = 5*cos(2*pi*1200*t+0.25*pi);
>> x3 = 5*cos(2*pi*1800*t+0.5*pi);
>> x=x1+x2+x3;
>> N=length(x);
>> index_t=[0:1:N-1];
>> f=[0:1:N-1]*fs/N;
>> Ak=abs(fft(x))/N;
>> subplot(2,1,1);plot(t,x);grid
>> xlabel('Time(sec)');ylabel('(a) Signal x(n)');
>> subplot(2,1,2);plot(f,Ak);grid
>> xlabel('Frequency(Hz)');ylabel('(b) Amplitude spectrum');
