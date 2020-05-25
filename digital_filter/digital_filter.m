>> % #1
>> %20153865 김민석
>> y = zeros(1,20);
>> y = [1 0 y];
>> n = 0:1:19;
>> x = (0.8).^n;
>> x = [0 -1 x];
>> for n=1:20
y(n+2)= 2*x(n+2)-4*x(n+1)-0.5*y(n+1)-y(n);
end
>> n=0:1:19;
>> subplot(3,1,1);stem(n,x(3:22));grid;ylabel('Input x(n)');xlabel('Sample number');
>> subplot(3,1,2);stem(n,y(3:22)),grid;xlabel('Number of samples, n; part(a)'); ylabel('Output y(n)');
>> y = zeros(1,20);
>> y = [0 0 y];
>> n = 0:1:19;
>> x = (0.8).^n;
>>  x = [0 0 x];
>> for n = 1:20
y(n+2)= 2*x(n+2)-4*x(n+1)-0.5*y(n+1)-y(n);
end
>> n = 0:1:19;
>> subplot(3,1,3); stem(n,y(3:22)),grid;
>> xlabel('Number of samples, n; part(b)'); ylabel('Output y(n)');
>> y(3:22)
>> clear

>> % #2
>> y = zeros(1,20);
>> y = [1 0 y];
>> n = 0:1:19;
>> x = (0.8).^n;
>> x = [0 -1 x];
>> for n=1:20
y(n+2)= 2*x(n+2)-4*x(n+1)-0.5*y(n+1)-0.5*y(n);
end
>> n=0:1:19;
>> subplot(3,1,1);stem(n,x(3:22));grid;ylabel('Input x(n)');xlabel('Sample number');
>> subplot(3,1,2);stem(n,y(3:22)),grid;xlabel('Number of samples, n; part(a)'); ylabel('Output y(n)');
>> y = zeros(1,20);
>> y = [0 0 y];
>> n = 0:1:19;
>> x = (0.8).^n;
>> x = [0 0 x];
>> for n = 1:20
y(n+2)= 2*x(n+2)-4*x(n+1)-0.5*y(n+1)-0.5*y(n);
end
>> n = 0:1:19;
>> subplot(3,1,3); stem(n,y(3:22)),grid;
>> xlabel('Number of samples, n; part(b)'); ylabel('Output y(n)');
>>y(3:22) 
