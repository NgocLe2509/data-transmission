t = 0:9999; % (1)
% Tín hieu tuan hoàn ban dau
x = 5*sin(2*pi*100*t/10000); % (2)
subplot(2,1,1); % (3)
%Lay tu vi tri dau tien den 500
plot(t(1:500),x(1:500));
title('Original Signal');
xlabel('time (milliseconds)');
subplot(2,1,2); %(4)
% tín hieu sau khi thêm nhieu trang
y = awgn(x,1,'measured'); % (5)
plot(t(1:500),y(1:500));
title('Modified Signal');
xlabel('time (milliseconds)');