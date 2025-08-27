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

iq = reshape(iq,128,8);
iq_fft = [];
for i=1:size(iq,2)
  tmp = ifft(iq(:,i),128);
  iq_fft = [iq_fft; tmp];
end
signalAnalyzer(iq);

<<<<<<< HEAD
//asdasdsadasdasdsadsadsadasdsadsadsa
=======
<<<<<<< HEAD

<<<<<<< HEAD
=======
disp("Hello from test_brnch");
>>>>>>> 10c1500a44a7caf6f361bc2905e6754c19c32f36
>>>>>>> 6e581b4310efb7257aff5f0fa86821f4b303d5a6


//////////asdeprtrphjkhjf;ocihjrfthj



ewrwetrhtyiutyi
yutyuty
=======

>>>>>>> 75118efd1c87b2c1e9afe52a8fdbffdb322646df
