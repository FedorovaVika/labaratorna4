ecg = load('ecg2x60.dat');
fs = 200;
t = (0:length(ecg)-1)/fs;
mu = 0.1;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,b] = lms60(ecg,d,mu);
a = 1;
figure(441);
subplot(3,1,1), 
plot(t, y);
title('�������� ������ y(n) ��� mu = 0.1');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2),
plot(t,e);
title('³������������� ������ e(n) ��� mu = 0.1');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3),
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.1');
xlabel('�������'),
ylabel('��������');
mu = 0.01;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,b] = lms60(ecg,d,mu);
a = 1;
figure(442);
subplot(3,1,1), 
plot(t, y);
title('�������� ������ y(n) ��� mu = 0.01');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2),
plot(t,e);
title('³������������� ������ e(n) ��� mu = 0.01');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), 
plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.01');
xlabel('�������'), 
ylabel('��������');
mu = 0.001;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,b] = lms60(ecg,d,mu);
a = 1;
figure(443);
subplot(3,1,1), 
plot(t, y);
title('�������� ������ y(n) ��� mu = 0.001');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2), plot(t,e);
title('³������������� ������ e(n) ��� mu = 0.001');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), plot(w/(2*pi)*fs, mag);
title('���������-�������� �������������� ��� mu = 0.001');
xlabel('�������'), 
ylabel('��������');
mu = 0.0001;
f = 60;
d = [cos(2*pi*f*t); sin(2*pi*f*t)];
[y,e,b] = lms60(ecg,d,mu);
a = 1;
figure(444);
subplot(3,1,1), plot(t, y);
title('�������� ������ y(n) ��� mu = 0.0001');
xlabel('���'), 
ylabel('��������');
subplot(3,1,2), 
plot(t,e);
title('³������������� ������ e(n) ��� mu = 0.0001');
xlabel('���'), 
ylabel('��������');
n = 512;
[h, w] = freqz(b,a,n);
mag = abs(h);
subplot(3,1,3), 
plot(w/(2*pi)*fs, mag);
title('��������-�������� �������������� ��� mu = 0.0001');
xlabel('�������'), 
ylabel('��������');
