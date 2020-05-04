>> fs=8000; T=1/fs;
>> x=2*sin(2000*pi*[0:1:50]*T);
>> N=length(x);
>> index_t=[0:1:N-1];
>> f=[0:1:N-1]*8000/N;
>> xf=abs(fft(x))/N;
>> figure(1)
>> x_b=x.*bartlett(N)';
>> xf_b=abs(fft(x_b))/N;
>> subplot(2,2,1); plot(index_t, x_b);grid
>> xlabel('Time index n'); ylabel('x(n)');
>> subplot(2,2,3); plot(index_t,x_b); grid
>> xlabel('Time index n'); ylabel('Triangular windowed x(n)');
>> subplot(2,2,2); plot(f,xf_b);grid; axis([0 8000 0 1]);
>> xlabel('Time index n'); ylabel('Ak (no window)');
>> subplot(2,2,4); plot(f,xf_b);grid; axis([0 8000 0 1]);
>> xlabel('Time index n'); ylabel('Triangular windowed Ak');
>> subplot(2,2,1); plot(index_t, x);grid
>> subplot(2,2,3); plot(index_t,x); grid
>> subplot(2,2,3); plot(index_t,x_b); grid
>> subplot(2,2,2); plot(f,xf);grid; axis([0 8000 0 1]);
>> 
>> figure(2)
>> x=2*sin(2000*pi*[0:1:100]*T);
>> N=length(x);
>> index_t=[0:1:N-1];
>> f=[0:1:N-1]*fs/N;
>> xf=abs(fft(x))/N;
>> x_hm=x.*hamming(N)';
>> xf_hm=abs(fft(x_hm))/N;
>> subplot(2,2,1);plot(index_t,x);grid
>> xlabel('Time index n'); ylabel('x(n)');
>> subplot(2,2,3); plot(index_t, x_hm); grid
>> xlabel('Time index n'); ylabel('Hamming windowed x(n)');
>> subplot(2,2,2); plot(f,xf); grid; axis([0 fs 0 1]);
>> xlabel('Time index n'); ylabel('Ak (no window)');
>> subplot(2,2,4); plot(f,xf_hm); grid; axis([0 fs 0 1]);
>> xlabel('Frequency(Hz)'); ylabel('Hamming windowed x(n)');
>> subplot(2,2,3); plot(index_t, x_hm); grid
>> xlabel('Time index n'); ylabel('Hamming windowed x(n)');
>> subplot(2,2,2); plot(f,xf); grid; axis([0 fs 0 1]);
>> xlabel('Frequency(Hz)'); ylabel('Ak (no window)');
>> 
>> figure(3)
>> x=2*sin(2000*pi*[0:1:150]*T);
>> N=length(x);
>> index_t=[0:1:N-1];
>> f=[0:1:N-1]*fs/N;
>> xf=2*abs(fft(x))/N;xf(1)=xf(1)/2;
>> x_hn=x.*hanning(N)';
>> xf_hn=2*abs(fft(x_hn))/N;xf_hn(1)=xf_hn(1)/2;
>> subplot(2,2,1);plot(index_t,x);grid
>> xlabel('Time index n'); ylabel('x(n)');
>> subplot(2,2,3);plot(index_t,x_hn);grid
>> xlabel('Time index n'); ylabel('Hanning windowed x(n)');
>> subplot(2,2,2);plot(f(1:(N-1)/2),xf(1:(N-1)/2));grid;axis([0 fs/2 0 1]);
>> xlabel('Frequency(Hz)'); ylabel('Ak (no window)');
>> subplot(2,2,4);plot(f(1:(N-1)/2),xf_hn(1:(N-1)/2));grid;axis([0 fs/2 0 1]);
>> xlabel('Frequency(Hz)'); ylabel('Hanning windowed Ak)');
