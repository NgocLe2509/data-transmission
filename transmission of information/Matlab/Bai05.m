f = 2400;
c = 299.792458;
d = 1:1:1000;
fspl =((4*pi*d*f)/c).^2;
subplot(2,2,1);
plot(d,10*log10(fspl));
title('Original (1)');
xlabel('Distance (m)');
ylabel('Path Loss (dB)');

%Tang f
f = 24000;
d = 1:1:1000;
fspl =((4*pi*d*f)/c).^2;
subplot(2,2,2);
plot(d,10*log10(fspl));
title('Increase f (2)');
xlabel('Distance (m)');
ylabel('Path Loss (dB)');

%Tang d
f = 2400;
d = 10:1:10000;
fspl =((4*pi*d*f)/c).^2;
subplot(2,2,3);
plot(d,10*log10(fspl));
title('Increase d (3)');
xlabel('Distance (m)');
ylabel('Path Loss (dB)');

%Tang d va f
f = 24000;
d = 10:1:10000;
fspl =((4*pi*d*f)/c).^2;
subplot(2,2,4);
plot(d,10*log10(fspl));
title('Increase d & f (4)');
xlabel('Distance (m)');
ylabel('Path Loss (dB)');

