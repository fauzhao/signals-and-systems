
prob8_4h

% impulse reponse of the channel
h1=hamming(41)'.*sinc((t(1:41)-2*T)*2/T);

% if the previous pulse input is y and is passed through a channel whose 
% whose impulse reponse is h1 then it will come out as conv(y,h1)
y=conv(y,h1);

t=[0:dt:(length(y)-1)*dt];

figure(3)
clf

subplot(211)
stem(t,y);

subplot(212)
eyediagram(y,fb,dt)

return
