clc;clear all;close all
%   Test Program for atmosphere with plots
tic
[Z Z_L Z_U T P rho c g mu nu k n n_sum] = atmo;
toc
plot(T,Z)
ylabel('Z')
xlabel('T[K]')
figure
semilogx(P,Z)
ylabel('Z')
xlabel('P[Pa]')
figure
semilogx(rho,Z)
ylabel('Z')
xlabel('rho[kg/m^3]')
figure
plot(c,Z_L)
ylabel('Z')
xlabel('c[m/s]')
figure
plot(g,Z)
ylabel('Z')
xlabel('g[m/s^2]')
figure
plot(mu,Z_L)
ylabel('Z')
xlabel('\mu')
figure
semilogx(nu,Z_L)
ylabel('Z')
xlabel('\xi')
figure
plot(k,Z_L)
ylabel('Z')
xlabel('k')
figure
semilogx(n,Z_U)
ylabel('Z')
xlabel('n')
figure
semilogx(n_sum,Z_U)
ylabel('Z')
xlabel('n_sum')