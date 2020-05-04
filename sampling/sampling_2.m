>> fs = 100; 
>> t = 0:1/fs:0.1;
>> t_origin = 0:1/100000:0.1;

>> x1 = sin(2*pi*90*t_origin);  %연속적인 sin 곡선 그래프
>> x2 = sin(2*pi*90*t); %sampling 일점쇄선+마커 그래프

>> plot(t_origin,x1); hold on
>> plot(t,x2,’-.o’);
>> title('Sampling condition is not satisfied');
>> xlabel('Time (sec)');
>> ylabel('Voltage');
>> axis([0,0.1,-1.5,1.5]);
>> grid on;
>> hold off
