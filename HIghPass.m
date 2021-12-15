clear all,clc;
Fs = 8000;           % Sampling frequency
nBits=24;             % Data Rate
nChannels=1;          % Microphone
R = audiorecorder(Fs,nBits, nChannels) % used for activating Audio Reco..
disp("Lets Generate Voice")
recordblocking(R, 5);  % Stop Recording
disp("Times Up");
z = getaudiodata(R);    % Create an array from the audio signal
fs = 8000;
t = 0:1/fs:1;
x = z          
highpass(x,1000,fs)