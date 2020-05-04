>> f = 50;
>> t = linspace(0,0.05,501);
>> x1 = cos(2*pi*f*t);
>> x2 = 2*sin(4*pi*f*t);

>> g_x1 = x1.^2 - 3;
>> g_x2 = x2.^2 - 3;
>> g_x1x2 = (x1+x2).^2 - 3;
>> g_sum = g_x1 + g_x2;

>> plot(t, g_x1); hold on
>> plot(t, g_x2, 'r');
>> plot(t, g_x1x2, 'k');
>> plot(t, g_sum, 'y');
>> grid on;
>> title('Linearity Test g(x)');
>> xlabel('Time(sec)');
>> hold off;
