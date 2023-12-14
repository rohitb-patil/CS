fm = 10;
fc = 100;
fs = 1000;
t = 0 :1/fs:1;
am = 3;
ac = 2;
ka =0.8;

mt = am * cos(2*pi*fm*t);
ct = ac * cos(2*pi*fc*t);
yt = mt .* ct;
mtd = yt .* ct;
mtd = lowpass(mtd,2*fm,fs);

figure;
subplot(4,1,1);
plot(t,mt);
xlabel("TIME");
ylabel("AMPLITUDE");
title("MODULATING WAVE");

subplot(4,1,2);
plot(t,ct);
xlabel("TIME");
ylabel("AMPLITUDE");
title("CARRIER WAVE");

subplot(4,1,3);
plot(t,yt);
hold on
plot(t,mt);
plot(t,-mt);
xlabel("TIME");
ylabel("AMPLITUDE");
title("MODULATED WAVE");
hold off

subplot(4,1,4);
plot(t,mtd);
xlabel("TIME");
ylabel("AMPLITUDE");
title("DEMODULATED WAVE");
