t = 0:0.001:2; % (1)
 % T�n hieu tuan ho�n ban dau,
x = square(5*pi*t); %(2)
subplot(2,1,1);
plot(t,x);
title('Original Signal');
xlabel('time (milliseconds)');
subplot(2,1,2);
% t�n hieu sau khi th�m nhieu trang
y = awgn(x,1,'measured');
plot(t,y);
title('Modified Signal');
xlabel('time (milliseconds)');