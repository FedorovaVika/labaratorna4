fs = 200;
N =  400;
t = (0:(N-1))/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
t = (0:length(s)-1)/fs;
v = 2*randn(size(t));  
x = s+v;
L = 256;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(341);
subplot(2,1,1), 
plot(t,y);
title('³������������� ������ y(n) ��� L = 256');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 256');
xlabel('�������'),
ylabel('��������');
fs = 200;
N =  800;
t = (0:(N-1))/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
t = (0:length(s)-1)/fs;
v = 2*randn(size(t));  
x = s+v;
L = 512;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(342);
subplot(2,1,1), plot(t,y);
title('³������������� ������ y(n) ��� L = 512');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 512');
xlabel('�������'), 
ylabel('��������');
fs = 200;
N =  2000;
t = (0:(N-1))/fs; 
s1 = sin(2*pi*10*t);
s2 = sin(2*pi*20*t);
s = [s1 s2];
t = (0:length(s)-1)/fs;
v = 2*randn(size(t));  
x = s+v;
L = 1024;
mu = 0.0001;
[y,e,b] = lms(x,s,mu,L);
a = 1;
figure(343);
subplot(2,1,1), plot(t,y);
title('³������������� ������ y(n) ��� L = 1024');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(2,1,2), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� L = 1024');
xlabel('�������'), 
ylabel('��������');