clear all
% load("signal10MHz15Khz.mat");

%f = fopen("C:\Users\shoot\Downloads\nr-fr1-tm3.3_100mhz_30khz_tdd_v15.7.0.fd_symbols_exact_.25_out_ref.bin", "rb");

f = fopen("C:\Byluchev_WORK\MATLAB\sin.bin", "rb");

s1 = fread(f, 'int32');

sig_size = size(s1, 1);

i = zeros(sig_size/2, 1);
q = zeros(sig_size/2, 1);

pos = 1;
for k = 1:2:sig_size
    i(pos) = typecast(int32(s1(k)),'single');
    q(pos) = typecast(int32(s1(k+1)),'single');
    pos = pos + 1;
end

iq = i + 1i*q;

iq = ifft(iq);
signalAnalyzer(iq);

force power