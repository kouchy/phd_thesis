K = 128; N = 256; E = 100;

Src = aff3ct_module_source_random     (K   );
Enc = aff3ct_module_encoder_repetition(K, N);
Mdm = aff3ct_module_modem_BPSK        (N   );
Chn = aff3ct_module_channel_AWGN      (N   );
Dec = aff3ct_module_decoder_repetition(K, N);
Mnt = aff3ct_module_monitor_BFER      (K, E);

while ~Mnt.fe_limit_achieved()
	u = Src.generate    (    );
	c = Enc.encode      (u   );
	x = Mdm.modulate    (c   );
	y = Chn.add_noise   (x   );
	l = Mdm.demodulate  (y   );
	v = Dec.decode_siho (l   );
	    Mnt.check_errors(u, v);
end
