clc; clear all; close all;

d = daq.getDevices;
s = daq.createSession('ni');

s.DurationInSeconds = 3; % Run for 3 seconds
s.Rate = 2000; % Sampling rate 2000 scans/sec
s.addAnalogInputChannel('myDAQ1','ai0', 'Voltage');

data = startForeground(s);
time = 1/2000*(0:length(data)-1);

plot(time,data);
xlabel('time (second)');
ylabel('sensor data (vol)');
