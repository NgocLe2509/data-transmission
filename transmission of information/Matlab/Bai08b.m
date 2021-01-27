t = 0:0.001:2; % (1)
 % Tín hieu tuan hoàn ban dau,
x = square(5*pi*t); %(2)
subplot(2,1,1);
plot(t,x);
title('Original Signal');
xlabel('time (milliseconds)');
subplot(2,1,2);
% tín hieu sau khi thêm nhieu trang
y = awgn(x,1,'measured');
plot(t,y);
title('Modified Signal');
xlabel('time (milliseconds)');