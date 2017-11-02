fs = 200;
N =  400;
t = (0:(N-1))/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
t = (0:length(s)-1)/fs;
v = 2*randn(size(t));  
x = s+v;
L = 128;
mu = 0.01;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(331);
subplot(2,1,1), 
plot(t,y);
title('³������������� ������ y(n) ��� mu = 0.01');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.01');
xlabel('�������'), 
ylabel('��������');
L = 128;
mu = 0.001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(332);
subplot(2,1,1), plot(t,y);
title('³������������� ������ y(n) ��� mu = 0.001');
xlabel('���'), ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.001');
xlabel('�������'), 
ylabel('��������');
L = 128;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(333);
subplot(2,1,1), plot(t,y);
title('³������������� ������ y(n)');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.0001');
xlabel('�������'), 
ylabel('��������');
L = 128;
mu = 0.00001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(334);
subplot(2,1,1), 
plot(t,y);
title('³������������� ������ y(n) ��� mu = 0.00001');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.00001');
xlabel('�������'),
ylabel('��������');
L = 128;
mu = 0.000001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(335);
subplot(2,1,1), plot(t,y);
title('³������������� ������ y(n) ��� mu = 0.000001');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.000001');
xlabel('�������'), 
ylabel('��������');