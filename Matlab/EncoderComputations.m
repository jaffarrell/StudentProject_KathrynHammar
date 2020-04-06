clear all;
load('EncoderSim\encoder.mat');
T = 1;
omega_L = (2*pi/N)*e(:, 1)/T;  
omega_R = (2*pi/N)*e(:, 2)/T;
v_L = R*omega_L;
v_R = R*omega_R;

u_v = (v_L + v_R)/2;
omega_v = (v_L - v_R)/L;

t = 0:1:length(e)-1;

figure(1);
plot(t, omega_v);
xlabel('time (sec)') 
ylabel('vehicle rate of rotation (\omega_v, rad/s)') 
hold off;

figure(2);
plot(t, u_v);
xlabel('time (sec)') 
ylabel('velocity of vehicle (u_v, rad/s)') 
hold off;

state = state_vect(e,L,N,R);

figure(3);
plot(t, state(:,3));
xlabel('time (sec)') 
ylabel('yaw angle (\psi_v, rad)') 
hold off

figure(4); 
plot(state(:,1), state(:,2));
xlabel('Position vector N component (T_{EV}, m)') 
ylabel('Position vector E component (T_{EV}, m)') 
hold off
