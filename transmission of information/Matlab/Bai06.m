% t?n s? (??n v? MHz) 
f = 2400; 
% v?n t?c ánh sáng (??n v? 10^6 m/s) 
c = 299.792458; 
% Ma tr?n kho?ng cách gi?a hai tr?m (??n v?: mét) 
d = 1:1:1000; 
% Gi? s? ?? l?i ?n ten là 14.6 dB
Gt=14.6;
Gx=14.6;
fspl = 10*log10(((4*pi*d*f)/c).^2)- Gt -Gx;
plot (d,fspl);
xlabel('Distance (m)');
ylabel('Path Loss (dB)'); 