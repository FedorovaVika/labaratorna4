fs = 200;
N =  400;
t = (0:(N-1))/fs; 
v = 2*randn(size(t));  
s = sin(2*pi*10*t)+sin(2*pi*20*t);
x = s+v;
L = 128;
b = wiener_hopf(x, s, L);
a = 1;
y = filter(b,a,s);
figure(143);
subplot(3,1,1), 
plot(t,x);
title('������ x(n) ��� L = 128');
xlabel('���'),
ylabel('��������');
subplot(3,1,2), 
plot(t,s);
title('������ s(n) ��� L = 128');
xlabel('���'), 
ylabel('��������');
subplot(3,1,3),
plot(t,y);
title('³������������� ������ y(n) ��� L = 128');
xlabel('���'), 
ylabel('��������');
n = 512;
figure(144);
[h, w]=freqz(b,a,n);
mag=abs(h);
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 128 ');
xlabel('�������'), 
ylabel('��������');
D = var(y)