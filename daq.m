t=0:0.001:1;
sin_w=sin(2*pi*10*t);
cos_w=cos(2*pi*30*t);
sum_w=sin_w+cos_w;
figure(1)
subplot(6,1,1);
plot(t,sum_w)

t=1/20;
t20=0:t:0.5;
sin_w=sin(2*pi*10*t20);
cos_w=cos(2*pi*30*t20);
sum_w=sin_w+cos_w;
subplot(6,1,2);
plot(t20,sum_w)

t=1/40;
t40=0:t:0.5;
sin_w=sin(2*pi*10*t40);
cos_w=cos(2*pi*30*t40);
sum_w=sin_w+cos_w;
subplot(6,1,3);
plot(t40,sum_w)

t=1/60;
t60=0:t:0.5;
sin_w=sin(2*pi*10*t60);
cos_w=cos(2*pi*30*t60);
sum_w=sin_w+cos_w;
subplot(6,1,4);
plot(t60,sum_w)

t=1/80;
t80=0:t:0.5;
sin_w=sin(2*pi*10*t80);
cos_w=cos(2*pi*30*t80);
sum_w=sin_w+cos_w;
subplot(6,1,5);
plot(t80,sum_w)

t=1/100;
t100=0:t:0.5;
sin_w=sin(2*pi*10*t100);
cos_w=cos(2*pi*30*t100);
sum_w=sin_w+cos_w;
subplot(6,1,6);
plot(t100,sum_w)

t=1:length(datadaq);
figure(2);
subplot(2,1,1);
plot(t,datadaq)

fs=500
f=linspace(-fs/2,fs/2,1000)
Y = fft(datadaq,1000)
Ys = fftshift(Y)/1000;
subplot(2,1,2);
plot(f,abs(Ys))