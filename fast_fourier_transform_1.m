x = [1 2 3 4];
N = length(x);
X1 = fft(x,N);
x1 = ifft(X1,N);
stem(real(x1),'bo')
hold on
grid on
stem(x,'r+')
hold off;
