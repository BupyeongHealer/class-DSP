>> f = 50;
>> t = linspace(0,0.05,501);
>> x1 = cos(2*pi*f*t);
>> x2 = 2*sin(4*pi*f*t);
>> 
>> h_x1 = 3*x1;
>> h_x2 = 3*x2;
>> h_x1x2 = 3*(x1+x2);
>> h_sum = h_x1 + h_x2;
>> 
>> plot(t, h_x1); hold on
>> plot(t, h_x2, 'r');
>> plot(t, h_x1x2, 'k');
>> plot(t, h_sum, 'y');
>> plot(t, h_x1x2, 'ko');
>> grid on
>> title('Linearity Test h(x)');
>> xlabel('Time(sec)');
>> hold off
