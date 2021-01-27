clc;
close all;
clear all;
% tao tin hieu
x=0:.5:25.5; %25.5 gan bang 8pi
sig1=8*sin(x);
l=length(sig1)/2;
sig2=8*triang(l);

subplot(2,2,1); 
plot(sig1);
title('Sinusoidal Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(2,2,2); 
plot(sig2);
title('Triangular Signal');
ylabel('Amplitude--->');
xlabel('Time--->');

subplot(2,2,3); 
stem(sig1); 
title('Sampled Sinusoidal Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(2,2,4); 
stem(sig2); 
title('Sampled Triangular Signal');
ylabel('Amplitude--->');
xlabel('Time--->'); 
l1=length(sig1);
l2=length(sig2);
i1 = 1;
i2 = 1;
flag=1;
for i=1:l1/2
   arr(flag)=sig1(i1);
   arr(flag+1)= sig1(i1 +1);
   arr(flag+2) = sig2(i2);
   i1 = i1 +2;
   i2 = i2 +1;
   flag = flag+3; 
end
larr = length(arr)/2;
flag=1;
for i=1:larr
    sig(1,i) = arr(flag);
    sig(2,i) = arr(flag+1);
    flag = flag +2;
end
tdmsig=reshape(sig,1,2*larr);
figure
stem(tdmsig);
title('TDM Signal');
ylabel('Amplitude--->');
xlabel('Time--->');

%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

% Phân chia tin hieu
demux=reshape(tdmsig,2,larr);
flag = 1;
for i=1:larr
    narr(flag) = demux(1,i);
    narr(flag+1) = demux(2,i);
    flag = flag+2;
end
i1=1;
i2=1;
flag = 1;
for i=1:l1/2
sig3(i1)= narr(flag);
sig3(i1+1)= narr(flag+1);
sig4(i2)=demux(flag+2);
i1 = i1+2;
i2=i2+1;
flag = flag+3;
end

figure
subplot(2,1,1)
plot(sig3);
title('Recovered Sinusoidal Signal');
ylabel('Amplitude--->');
xlabel('Time--->');
subplot(2,1,2)
plot(sig4);
title('Recovered Triangular Signal');
ylabel('Amplitude--->');
xlabel('Time--->');