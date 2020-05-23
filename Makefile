.phony: all clean mrproper

all: titlepage \
     chapter1_fig \
     chapter2_fig \
     chapter3_fig \
     chapter4_fig \
     chapter5_fig \
     settings/colors.tex \
     settings/settings_template.tex \
     settings/settings_custom.tex \
     head/abstracts.tex \
     head/dedication.tex \
     head/labo.tex \
     head/symbols.tex \
     head/thanks.tex \
     main/introduction.tex \
     main/chapter1.tex \
     main/chapter2.tex \
     main/chapter3.tex \
     main/chapter4.tex \
     main/chapter5.tex \
     main/chapter6.tex \
     main/conclusion.tex \
     tail/bibliography.bib \
     tail/bibliography.tex \
     tail/publications.tex \
     my_thesis.tex
	rubber --unsafe -d my_thesis.tex

fast: settings/colors.tex \
      settings/settings_template.tex \
      settings/settings_custom.tex \
      head/abstracts.tex \
      head/dedication.tex \
      head/labo.tex \
      head/symbols.tex \
      head/thanks.tex \
      main/introduction.tex \
      main/chapter1.tex \
      main/chapter2.tex \
      main/chapter3.tex \
      main/chapter4.tex \
      main/chapter5.tex \
      main/chapter6.tex \
      main/conclusion.tex \
      tail/bibliography.bib \
      tail/bibliography.tex \
      tail/publications.tex \
      my_thesis.tex
	rubber --unsafe -d my_thesis.tex

titlepage: head/titlepage.tex
	cd head && rubber -d titlepage.tex

chapter1_fig: main/chapter1/fig/intro/com_chain.svg \
              main/chapter1/fig/simu/com_chain.svg \
              main/chapter1/fig/simu/in_out.svg \
              main/chapter1/fig/simu/bfer/bfer_bch_rs.tex \
              main/chapter1/fig/simu/bfer/bfer_ldpc.tex \
              main/chapter1/fig/simu/bfer/bfer_polar.tex \
              main/chapter1/fig/simu/bfer/bfer_rsc.tex \
              main/chapter1/fig/simu/bfer/bfer_tpc.tex \
              main/chapter1/fig/simu/bfer/bfer_turbo.tex \
              main/chapter1/fig/simu/bfer/colors \
              main/chapter1/fig/simu/bfer/dat/BCH_N255_K231_algebraic_T3.txt \
              main/chapter1/fig/simu/bfer/dat/LDPC_N648_K540_hlayered_SPA_i05_Wi-Fi.txt \
              main/chapter1/fig/simu/bfer/dat/LDPC_N648_K540_hlayered_SPA_i40_Wi-Fi.txt \
              main/chapter1/fig/simu/bfer/dat/Polar_N2048_K1723_ASCL_FA_L8_CRC32_SPC4_p32.txt \
              main/chapter1/fig/simu/bfer/dat/Polar_N2048_K1723_ASCL_FA_L32_CRC32_SPC4_p32.txt \
              main/chapter1/fig/simu/bfer/dat/RSC_N262_K128_BCJR_p32.txt \
              main/chapter1/fig/simu/bfer/dat/RSC_N2054_K1024_BCJR_p32.txt \
              main/chapter1/fig/simu/bfer/dat/RS_N31_K29_algebraic_T1.txt \
              main/chapter1/fig/simu/bfer/dat/Turbo_N18432_K6144_BCJR_i5_p32_LTE.txt \
              main/chapter1/fig/simu/bfer/dat/Turbo_N18432_K6144_BCJR_i6_p32_LTE.txt \
              main/chapter1/fig/simu/bfer/dat/Turbo_prod_BCH_128_113_p4_i6.txt \
              main/chapter1/fig/simu/bfer/dat/Turbo_prod_BCH_128_113_p4_i8.txt \
              main/chapter1/fig/simu/bfer/dat/Turbo_prod_BCH_128_113_p5_i8.txt \
              main/chapter1/fig/other/com_chain_inter.svg
	cd main/chapter1/fig/intro      && inkscape  com_chain.svg       --export-pdf=com_chain.pdf
	cd main/chapter1/fig/simu       && inkscape  com_chain.svg       --export-pdf=com_chain.pdf
	cd main/chapter1/fig/simu       && inkscape  in_out.svg          --export-pdf=in_out.pdf
	cd main/chapter1/fig/other      && inkscape  com_chain_inter.svg --export-pdf=com_chain_inter.pdf
	cd main/chapter1/fig/simu/bfer/ && rubber -d bfer_bch_rs.tex
	cd main/chapter1/fig/simu/bfer/ && rubber -d bfer_ldpc.tex
	cd main/chapter1/fig/simu/bfer/ && rubber -d bfer_polar.tex
	cd main/chapter1/fig/simu/bfer/ && rubber -d bfer_rsc.tex
	cd main/chapter1/fig/simu/bfer/ && rubber -d bfer_tpc.tex
	cd main/chapter1/fig/simu/bfer/ && rubber -d bfer_turbo.tex

chapter2_fig: main/chapter2/fig/polar/tree_pruning_example.fig \
              main/chapter2/fig/polar/algos_comparison/algos_comparison.tex \
              main/chapter2/fig/polar/algos_comparison/colors \
              main/chapter2/fig/polar/algos_comparison/dat/SC_8.txt \
              main/chapter2/fig/polar/algos_comparison/dat/SC_12.txt \
              main/chapter2/fig/polar/algos_comparison/dat/SC_20.txt \
              main/chapter2/fig/polar/algos_comparison/dat/SCL_8_32.txt \
              main/chapter2/fig/polar/algos_comparison/dat/SCL_12_32.txt \
              main/chapter2/fig/polar/algos_comparison/dat/SCL_16_32.txt \
              main/chapter2/fig/polar/algos_comparison/dat/SCL_20_32.txt \
              main/chapter2/fig/polar/algos_comparison/dat/SCL_20_128.txt \
              main/chapter2/fig/polar/scl_l/scl_l.tex \
              main/chapter2/fig/polar/scl_l/colors \
              main/chapter2/fig/polar/scl_l/dat/L_1.txt \
              main/chapter2/fig/polar/scl_l/dat/L_2.txt \
              main/chapter2/fig/polar/scl_l/dat/L_4.txt \
              main/chapter2/fig/polar/scl_l/dat/L_8.txt \
              main/chapter2/fig/polar/scl_l/dat/L_16.txt \
              main/chapter2/fig/polar/scl_l/dat/L_32.txt \
              main/chapter2/fig/polar/scl_l/dat/L_64.txt \
              main/chapter2/fig/polar/scl_l/dat/L_128.txt \
              main/chapter2/fig/polar/scl_bfer/scl_bfer.tex \
              main/chapter2/fig/polar/scl_bfer/scl_bfer_rep.tex \
              main/chapter2/fig/polar/scl_bfer/scl_bfer_crc.tex \
              main/chapter2/fig/polar/scl_bfer/colors \
              main/chapter2/fig/polar/scl_bfer/dat/crc/FA-SCL+CRC8.txt \
              main/chapter2/fig/polar/scl_bfer/dat/crc/FA-SCL+CRC16.txt \
              main/chapter2/fig/polar/scl_bfer/dat/crc/FA-SCL+CRC32.txt \
              main/chapter2/fig/polar/scl_bfer/dat/crc/PA-SCL+CRC8.txt \
              main/chapter2/fig/polar/scl_bfer/dat/crc/PA-SCL+CRC16.txt \
              main/chapter2/fig/polar/scl_bfer/dat/crc/PA-SCL+CRC32.txt \
              main/chapter2/fig/polar/scl_bfer/dat/crc/SCL+CRC8.txt \
              main/chapter2/fig/polar/scl_bfer/dat/crc/SCL+CRC16.txt \
              main/chapter2/fig/polar/scl_bfer/dat/crc/SCL+CRC32.txt \
              main/chapter2/fig/polar/scl_bfer/dat/rep/polar_2048_1723_1.0_4.5_ASCL32_CRC32_SPC4.txt \
              main/chapter2/fig/polar/scl_bfer/dat/rep/polar_2048_1723_1.0_4.5_ASCL32_CRC32_SPC4_8bits.txt \
              main/chapter2/fig/polar/scl_bfer/dat/rep/polar_2048_1723_1.0_4.5_ASCL32_CRC32_SPC4_8bits_rep.txt \
              main/chapter2/fig/polar/scl_bfer/dat/rep/polar_2048_1723_1.0_4.5_ASCL32_CRC32_SPC4_16bits.txt \
              main/chapter2/fig/polar/scl_adaptive/scl_adaptive.tex \
              main/chapter2/fig/polar/scl_adaptive/colors \
              main/chapter2/fig/polar/scl_adaptive/dat/polar_2048_1723_1.0_4.5_FASCL8_CRC32_SPC4_i5-6600K.txt \
              main/chapter2/fig/polar/scl_adaptive/dat/polar_2048_1723_1.0_4.5_FASCL32_CRC32_SPC4_i5-6600K.txt \
              main/chapter2/fig/polar/scl_adaptive/dat/polar_2048_1723_1.0_4.5_PASCL8_CRC32_SPC4_i5-6600K.txt \
              main/chapter2/fig/polar/scl_adaptive/dat/polar_2048_1723_1.0_4.5_PASCL32_CRC32_SPC4_i5-6600K.txt \
              main/chapter2/fig/turbo/bfer/bfer_old.gp \
              main/chapter2/fig/turbo/bfer/dat/data_6144.txt \
              main/chapter2/fig/turbo/bfer/bfer.tex \
              main/chapter2/fig/turbo/bfer/dat/data_6144_32b_float.txt \
              main/chapter2/fig/turbo/bfer/dat/data_6144_16b_fixed_Q6_3.txt \
              main/chapter2/fig/turbo/bfer/dat/data_6144_8b_fixed_Q6_2.txt \
              main/chapter2/fig/scma/ber_uncoded/ber_uncoded.tex \
              main/chapter2/fig/scma/ber_uncoded/colors \
              main/chapter2/fig/scma/ber_uncoded/dat/scma_empa.txt \
              main/chapter2/fig/scma/ber_uncoded/dat/scma_ml.txt \
              main/chapter2/fig/scma/ber_uncoded/dat/scma_mpa.txt \
              main/chapter2/fig/scma/ber_uncoded_iter/ber_uncoded_iter.tex \
              main/chapter2/fig/scma/ber_uncoded_iter/colors \
              main/chapter2/fig/scma/ber_uncoded_iter/dat/empa_2.txt \
              main/chapter2/fig/scma/ber_uncoded_iter/dat/empa_6.txt \
              main/chapter2/fig/scma/ber_uncoded_iter/dat/empa_10.txt \
              main/chapter2/fig/scma/ber_uncoded_iter/dat/empa_14.txt \
              main/chapter2/fig/scma/ber_uncoded_iter/dat/mpa_2.txt \
              main/chapter2/fig/scma/ber_uncoded_iter/dat/mpa_6.txt \
              main/chapter2/fig/scma/ber_uncoded_iter/dat/mpa_10.txt \
              main/chapter2/fig/scma/ber_uncoded_iter/dat/mpa_14.txt \
              main/chapter2/fig/scma/fec/fec_1_2.tex \
              main/chapter2/fig/scma/fec/fec_1_3.tex \
              main/chapter2/fig/scma/fec/colors \
              main/chapter2/fig/scma/fec/dat/1_2/ldpc_empa.txt \
              main/chapter2/fig/scma/fec/dat/1_2/ldpc_mpa.txt \
              main/chapter2/fig/scma/fec/dat/1_2/polar_empa.txt \
              main/chapter2/fig/scma/fec/dat/1_2/polar_mpa.txt \
              main/chapter2/fig/scma/fec/dat/1_2/turbo_empa.txt \
              main/chapter2/fig/scma/fec/dat/1_2/turbo_mpa.txt \
              main/chapter2/fig/scma/fec/dat/1_3/ldpc_empa.txt \
              main/chapter2/fig/scma/fec/dat/1_3/ldpc_mpa.txt \
              main/chapter2/fig/scma/fec/dat/1_3/polar_empa.txt \
              main/chapter2/fig/scma/fec/dat/1_3/polar_mpa.txt \
              main/chapter2/fig/scma/fec/dat/1_3/turbo_empa.txt \
              main/chapter2/fig/scma/fec/dat/1_3/turbo_mpa.txt
	cd main/chapter2/fig/polar/algos_comparison/ && rubber -d algos_comparison.tex
	cd main/chapter2/fig/polar/scl_l/            && rubber -d scl_l.tex
	cd main/chapter2/fig/polar/scl_bfer/         && rubber -d scl_bfer.tex
	cd main/chapter2/fig/polar/scl_bfer/         && rubber -d scl_bfer_crc.tex
	cd main/chapter2/fig/polar/scl_bfer/         && rubber -d scl_bfer_rep.tex
	cd main/chapter2/fig/polar/scl_adaptive/     && rubber -d scl_adaptive.tex
	cd main/chapter2/fig/turbo/bfer/             && gnuplot   bfer_old.gp
	cd main/chapter2/fig/turbo/bfer/             && rubber -d bfer.tex
	cd main/chapter2/fig/scma/ber_uncoded/       && rubber -d ber_uncoded.tex
	cd main/chapter2/fig/scma/ber_uncoded_iter/  && rubber -d ber_uncoded_iter.tex
	cd main/chapter2/fig/scma/fec/               && rubber -d fec_1_2.tex
	cd main/chapter2/fig/scma/fec/               && rubber -d fec_1_3.tex

chapter3_fig: main/chapter3/src/awgn/box_muller_simd.cpp \
              main/chapter3/src/ldpc/bp_min_sum_simd.cpp \
              main/chapter3/src/mipp/mli.cpp \
              main/chapter3/src/polar/f_g_h_simd.cpp \
              main/chapter3/src/polar/f_seq.cpp \
              main/chapter3/src/polar/f_simd.cpp \
              main/chapter3/src/polar/generated_sc_decoder.cpp \
              main/chapter3/src/quantizer/quantizer_seq.cpp \
              main/chapter3/src/quantizer/quantizer_simd.cpp \
              main/chapter3/fig/vectorization/mandelbrot_speedup/mandelbrot_speedup_old.gp \
              main/chapter3/fig/vectorization/mandelbrot_speedup/dat/perf_mandelbrot_32bit.dat \
              main/chapter3/fig/vectorization/mandelbrot_speedup/dat/perf_mandelbrot_64bit.dat \
              main/chapter3/fig/vectorization/mandelbrot_speedup/mandelbrot_speedup_32bit.tex \
              main/chapter3/fig/vectorization/mandelbrot_speedup/mandelbrot_speedup_64bit.tex \
              main/chapter3/fig/polar/sc_tree_cut/sc_tree_cut_old.gp \
              main/chapter3/fig/polar/sc_tree_cut/dat/E31225_samples_inter_8b_opti.dat \
              main/chapter3/fig/polar/sc_tree_cut/dat/E31225_samples_intra_32b_opti.dat \
              main/chapter3/fig/polar/sc_tree_cut/sc_tree_cut_inter.tex \
              main/chapter3/fig/polar/sc_tree_cut/dat/E31225_samples_inter_8b_opti_spc4.dat \
              main/chapter3/fig/polar/sc_tree_cut/dat/E31225_samples_inter_8b_opti_spc4+.dat \
              main/chapter3/fig/polar/sc_tree_cut/dat/E31225_samples_inter_8b_opti_spc16-.dat \
              main/chapter3/fig/polar/sc_tree_cut/sc_tree_cut_intra.tex \
              main/chapter3/fig/polar/sc_tree_cut/dat/E31225_samples_intra_32b_opti_spc4.dat \
              main/chapter3/fig/polar/sc_tree_cut/dat/E31225_samples_intra_32b_opti_spc4+.dat \
              main/chapter3/fig/polar/sc_tree_cut/dat/E31225_samples_intra_32b_opti_spc16-.dat \
              main/chapter3/fig/polar/scl_tree_cut/scl_tree_cut.tex \
              main/chapter3/fig/polar/scl_tree_cut/colors \
              main/chapter3/fig/polar/scl_tree_cut/dat/data_L32_i5-6600K.txt \
              main/chapter3/fig/polar/scl_spc/scl_spc.gp \
              main/chapter3/fig/polar/scl_spc/scl_spc_diff_old.gp \
              main/chapter3/fig/polar/scl_spc/scl_spc_diff.tex \
              main/chapter3/fig/polar/scl_spc/colors \
              main/chapter3/fig/polar/scl_spc/dat/data_snr_diff.txt \
              main/chapter3/fig/polar/scl_spc/dat/data_spc.txt \
              main/chapter3/fig/polar/scl_spc/dat/data_spc_diff.txt \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/scl_cpy_vs_ptr.tex \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/colors \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_cpy_8.txt \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_cpy_16.txt \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_cpy_32.txt \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_ptr_8.txt \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_ptr_16.txt \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_ptr_32.txt
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && gnuplot   mandelbrot_speedup_old.gp
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rubber -d mandelbrot_speedup_32bit.tex
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rubber -d mandelbrot_speedup_64bit.tex
	cd main/chapter3/fig/polar/sc_tree_cut/                && gnuplot   sc_tree_cut_old.gp
	cd main/chapter3/fig/polar/sc_tree_cut/                && rubber -d sc_tree_cut_inter.tex
	cd main/chapter3/fig/polar/sc_tree_cut/                && rubber -d sc_tree_cut_intra.tex
	cd main/chapter3/fig/polar/scl_tree_cut/               && rubber -d scl_tree_cut.tex
	cd main/chapter3/fig/polar/scl_spc/                    && gnuplot   scl_spc.gp
	cd main/chapter3/fig/polar/scl_spc/                    && gnuplot   scl_spc_diff_old.gp
	cd main/chapter3/fig/polar/scl_spc/                    && rubber -d scl_spc_diff.tex
	cd main/chapter3/fig/polar/scl_cpy_vs_ptr/             && rubber -d scl_cpy_vs_ptr.tex

chapter4_fig: main/chapter4/fig/soft_archi/com_chain_task_module.svg \
              main/chapter4/fig/simu/speedup/speedup.tex \
              main/chapter4/fig/simu/speedup/colors \
              main/chapter4/fig/simu/speedup/dat/AMD_Ryzen_7_2700X.txt \
              main/chapter4/fig/simu/speedup/dat/Cavium_ThunderX2_CN9975.txt \
              main/chapter4/fig/simu/speedup/dat/Intel_Xeon_E5-2680v3.txt \
              main/chapter4/fig/simu/speedup/dat/Intel_Xeon_Gold_6140.txt \
              main/chapter4/fig/simu/speedup/dat/Intel_Xeon_Gold_6142.txt \
              main/chapter4/fig/simu/speedup/dat/Intel_Xeon_Phi_7230.txt \
              main/chapter4/fig/simu/throughput/throughput.tex \
              main/chapter4/fig/simu/throughput/colors
	cd main/chapter4/fig/soft_archi/     && inkscape  com_chain_task_module.svg --export-pdf=com_chain_task_module.pdf
	cd main/chapter4/fig/simu/speedup    && rubber -d speedup.tex
	cd main/chapter4/fig/simu/throughput && rubber -d throughput.tex

chapter5_fig: main/chapter5/fig/polar/sc_energy_implems_vs/sc_energy_implems_vs_old.gp \
              main/chapter5/fig/polar/sc_energy_implems_vs/dat/A15_1100MHz_R05_intra_inter_bis.dat \
              main/chapter5/fig/polar/sc_energy_freq/sc_energy_freq_old.gp \
              main/chapter5/fig/polar/sc_energy_implems_vs/sc_energy_implems_vs_total.tex \
              main/chapter5/fig/polar/sc_energy_implems_vs/sc_energy_implems_vs_mem.tex \
              main/chapter5/fig/polar/sc_energy_implems_vs/dat/A15_1100MHz_R05_intra_dyn.dat \
              main/chapter5/fig/polar/sc_energy_implems_vs/dat/A15_1100MHz_R05_intra_gen.dat \
              main/chapter5/fig/polar/sc_energy_implems_vs/dat/A15_1100MHz_R05_inter_dyn.dat \
              main/chapter5/fig/polar/sc_energy_implems_vs/dat/A15_1100MHz_R05_inter_gen.dat \
              main/chapter5/fig/polar/sc_energy_freq/dat/A7_250MHz_550MHz_R05_N4096_intra_inter_bis.dat \
              main/chapter5/fig/polar/sc_energy_freq/dat/A15_800MHz_1400MHz_R05_N4096_intra_inter_bis.dat \
              main/chapter5/fig/polar/sc_energy_freq/sc_energy_freq_a7.tex \
              main/chapter5/fig/polar/sc_energy_freq/dat/A7_250MHz_550MHz_R05_N4096_intra_bis.dat \
              main/chapter5/fig/polar/sc_energy_freq/dat/A7_250MHz_550MHz_R05_N4096_inter_bis.dat \
              main/chapter5/fig/polar/sc_energy_freq/sc_energy_freq_a15.tex \
              main/chapter5/fig/polar/sc_energy_freq/dat/A15_800MHz_1400MHz_R05_N4096_intra_bis.dat \
              main/chapter5/fig/polar/sc_energy_freq/dat/A15_800MHz_1400MHz_R05_N4096_inter_bis.dat \
              main/chapter5/fig/polar/sc_energy_rate/sc_energy_rate_old.gp \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25.dat \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25.dat \
              main/chapter5/fig/polar/sc_energy_rate/sc_energy_rate_N2048.tex \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25_A7_inter_dyn.dat \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25_A7_intra_dyn.dat \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25_A53_inter_dyn.dat \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25_A53_intra_dyn.dat \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25_A57_inter_dyn.dat \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25_A57_intra_dyn.dat \
              main/chapter5/fig/polar/sc_energy_rate/sc_energy_rate_N32768.tex \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25_A7_inter_dyn.dat \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25_A7_intra_dyn.dat \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25_A53_inter_dyn.dat \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25_A53_intra_dyn.dat \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25_A57_inter_dyn.dat \
              main/chapter5/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25_A57_intra_dyn.dat \
              main/chapter5/fig/polar/sc_gen_thr_intra/sc_gen_thr_intra_old.gp \
              main/chapter5/fig/polar/sc_gen_thr_intra/dat/A15_samples_intra_32b.dat \
              main/chapter5/fig/polar/sc_gen_thr_intra/dat/E31225_samples_intra_32b.dat \
              main/chapter5/fig/polar/sc_gen_thr_intra/sc_gen_thr_intra_arm.tex \
              main/chapter5/fig/polar/sc_gen_thr_intra/dat/A15_samples_intra_32b_aff3ct_r5_6.dat \
              main/chapter5/fig/polar/sc_gen_thr_intra/dat/A15_samples_intra_32b_aff3ct_r1_2.dat \
              main/chapter5/fig/polar/sc_gen_thr_intra/sc_gen_thr_intra_x86.tex \
              main/chapter5/fig/polar/sc_gen_thr_intra/dat/E31225_samples_intra_32b_aff3ct_r5_6.dat \
              main/chapter5/fig/polar/sc_gen_thr_intra/dat/E31225_samples_intra_32b_aff3ct_r1_2.dat \
              main/chapter5/fig/polar/sc_gen_thr_intra/dat/E31225_samples_intra_32b_sarkis_r5_6.dat \
              main/chapter5/fig/polar/sc_gen_thr_intra/dat/E31225_samples_intra_32b_sarkis_r1_2.dat \
              main/chapter5/fig/polar/sc_gen_thr_inter/sc_gen_thr_inter_old.gp \
              main/chapter5/fig/polar/sc_gen_thr_inter/dat/A15_samples_inter_8b.dat \
              main/chapter5/fig/polar/sc_gen_thr_inter/dat/E31225_samples_inter_8b.dat \
              main/chapter5/fig/polar/sc_gen_thr_inter/sc_gen_thr_inter_arm.tex \
              main/chapter5/fig/polar/sc_gen_thr_inter/dat/A15_samples_inter_8b_aff3ct_r5_6.dat \
              main/chapter5/fig/polar/sc_gen_thr_inter/dat/A15_samples_inter_8b_aff3ct_r1_2.dat \
              main/chapter5/fig/polar/sc_gen_thr_inter/dat/A15_samples_inter_8b_handw_r5_6.dat \
              main/chapter5/fig/polar/sc_gen_thr_inter/dat/A15_samples_inter_8b_handw_r1_2.dat \
              main/chapter5/fig/polar/sc_gen_thr_inter/sc_gen_thr_inter_x86.tex \
              main/chapter5/fig/polar/sc_gen_thr_inter/dat/E31225_samples_inter_8b_aff3ct_r5_6.dat \
              main/chapter5/fig/polar/sc_gen_thr_inter/dat/E31225_samples_inter_8b_aff3ct_r1_2.dat \
              main/chapter5/fig/polar/sc_gen_thr_inter/dat/E31225_samples_inter_8b_handw_r5_6.dat \
              main/chapter5/fig/polar/sc_gen_thr_inter/dat/E31225_samples_inter_8b_handw_r1_2.dat \
              main/chapter5/fig/polar/sc_gen_l1i_size/sc_gen_l1i_size_old.gp \
              main/chapter5/fig/polar/sc_gen_l1i_size/sc_gen_l1i_size_w_comp.tex \
              main/chapter5/fig/polar/sc_gen_l1i_size/sc_gen_l1i_size_wo_comp.tex \
              main/chapter5/fig/polar/sc_gen_l1i_size/dat/samples_generated_decoders_sizes.dat \
              main/chapter5/fig/polar/sc_gen_l1i_size/dat/samples_generated_decoders_sizes_after_compression.dat \
              main/chapter5/fig/turbo/thr/thr.gp \
              main/chapter5/fig/turbo/thr/dat/data.txt \
              main/chapter5/fig/turbo/energy/energy.gp \
              main/chapter5/fig/turbo/energy/dat/data.txt \
              main/chapter5/fig/scma/energy/energy.tex \
              main/chapter5/fig/scma/energy/colors \
              main/chapter5/fig/scma/profiling/profiling.tex \
              main/chapter5/fig/scma/profiling/colors
	cd main/chapter5/fig/polar/sc_energy_implems_vs/ && gnuplot   sc_energy_implems_vs_old.gp
	cd main/chapter5/fig/polar/sc_energy_implems_vs/ && rubber -d sc_energy_implems_vs_total.tex
	cd main/chapter5/fig/polar/sc_energy_implems_vs/ && rubber -d sc_energy_implems_vs_mem.tex
	cd main/chapter5/fig/polar/sc_energy_freq/       && gnuplot   sc_energy_freq_old.gp
	cd main/chapter5/fig/polar/sc_energy_freq/       && rubber -d sc_energy_freq_a7.tex
	cd main/chapter5/fig/polar/sc_energy_freq/       && rubber -d sc_energy_freq_a15.tex
	cd main/chapter5/fig/polar/sc_energy_rate/       && gnuplot   sc_energy_rate_old.gp
	cd main/chapter5/fig/polar/sc_energy_rate/       && rubber -d sc_energy_rate_N2048.tex
	cd main/chapter5/fig/polar/sc_energy_rate/       && rubber -d sc_energy_rate_N32768.tex
	cd main/chapter5/fig/polar/sc_gen_thr_intra/     && gnuplot   sc_gen_thr_intra_old.gp
	cd main/chapter5/fig/polar/sc_gen_thr_intra/     && rubber -d sc_gen_thr_intra_arm.tex
	cd main/chapter5/fig/polar/sc_gen_thr_intra/     && rubber -d sc_gen_thr_intra_x86.tex
	cd main/chapter5/fig/polar/sc_gen_thr_inter/     && gnuplot   sc_gen_thr_inter_old.gp
	cd main/chapter5/fig/polar/sc_gen_thr_inter/     && rubber -d sc_gen_thr_inter_arm.tex
	cd main/chapter5/fig/polar/sc_gen_thr_inter/     && rubber -d sc_gen_thr_inter_x86.tex
	cd main/chapter5/fig/polar/sc_gen_l1i_size/      && gnuplot   sc_gen_l1i_size_old.gp
	cd main/chapter5/fig/polar/sc_gen_l1i_size/      && rubber -d sc_gen_l1i_size_w_comp.tex
	cd main/chapter5/fig/polar/sc_gen_l1i_size/      && rubber -d sc_gen_l1i_size_wo_comp.tex
	cd main/chapter5/fig/turbo/thr/                  && gnuplot   thr.gp
	cd main/chapter5/fig/turbo/energy/               && gnuplot   energy.gp
	cd main/chapter5/fig/scma/energy/                && rubber -d energy.tex
	cd main/chapter5/fig/scma/profiling/             && rubber -d profiling.tex

clean4all:
	rm -f *.mtc*
	rm -f *.bcf
	rm -f *.lol
	rm -f *.run.xml
	rm -rf _minted*
	rm -rf build

clean: clean4all
	cd ./                                                  && rubber --clean my_thesis
	cd head                                                && rubber --clean titlepage
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_bch_rs
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_ldpc
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_polar
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_rsc
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_tpc
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_turbo
	cd main/chapter2/fig/polar/algos_comparison/           && rubber --clean algos_comparison
	cd main/chapter2/fig/polar/scl_l/                      && rubber --clean scl_l
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber --clean scl_bfer
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber --clean scl_bfer_crc
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber --clean scl_bfer_rep
	cd main/chapter2/fig/polar/scl_adaptive/               && rubber --clean scl_adaptive
	cd main/chapter2/fig/turbo/bfer/                       && rubber --clean bfer
	cd main/chapter2/fig/scma/ber_uncoded/                 && rubber --clean ber_uncoded
	cd main/chapter2/fig/scma/ber_uncoded_iter/            && rubber --clean ber_uncoded_iter
	cd main/chapter2/fig/scma/fec/                         && rubber --clean fec_1_2
	cd main/chapter2/fig/scma/fec/                         && rubber --clean fec_1_3
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rubber --clean mandelbrot_speedup_32bit
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rubber --clean mandelbrot_speedup_64bit
	cd main/chapter3/fig/polar/sc_tree_cut/                && rubber --clean sc_tree_cut_inter
	cd main/chapter3/fig/polar/sc_tree_cut/                && rubber --clean sc_tree_cut_intra
	cd main/chapter3/fig/polar/scl_tree_cut/               && rubber --clean scl_tree_cut
	cd main/chapter3/fig/polar/scl_spc/                    && rubber --clean scl_spc_diff
	cd main/chapter3/fig/polar/scl_cpy_vs_ptr/             && rubber --clean scl_cpy_vs_ptr
	cd main/chapter4/fig/simu/speedup                      && rubber --clean speedup
	cd main/chapter4/fig/simu/throughput                   && rubber --clean throughput
	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && rubber --clean sc_gen_l1i_size_w_comp
	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && rubber --clean sc_gen_l1i_size_wo_comp
	cd main/chapter5/fig/polar/sc_gen_thr_inter/           && rubber --clean sc_gen_thr_inter_arm
	cd main/chapter5/fig/polar/sc_gen_thr_inter/           && rubber --clean sc_gen_thr_inter_x86
	cd main/chapter5/fig/polar/sc_gen_thr_intra/           && rubber --clean sc_gen_thr_intra_arm
	cd main/chapter5/fig/polar/sc_gen_thr_intra/           && rubber --clean sc_gen_thr_intra_x86
	cd main/chapter5/fig/polar/sc_energy_freq/             && rubber --clean sc_energy_freq_a7
	cd main/chapter5/fig/polar/sc_energy_freq/             && rubber --clean sc_energy_freq_a15
	cd main/chapter5/fig/polar/sc_energy_implems_vs/       && rubber --clean sc_energy_implems_vs_total
	cd main/chapter5/fig/polar/sc_energy_implems_vs/       && rubber --clean sc_energy_implems_vs_mem
	cd main/chapter5/fig/polar/sc_energy_rate/             && rubber --clean sc_energy_rate_N2048
	cd main/chapter5/fig/polar/sc_energy_rate/             && rubber --clean sc_energy_rate_N32768
	cd main/chapter5/fig/scma/energy/                      && rubber --clean energy
	cd main/chapter5/fig/scma/profiling/                   && rubber --clean profiling

mrproper: clean4all
	cd ./                                                  && rubber --clean -d my_thesis.tex
	cd head                                                && rubber --clean -d titlepage.tex
	cd main/chapter1/fig/intro                             && rm -f             com_chain.pdf
	cd main/chapter1/fig/simu                              && rm -f             com_chain.pdf
	cd main/chapter1/fig/simu                              && rm -f             in_out.pdf
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_bch_rs.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_ldpc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_polar.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_rsc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_tpc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_turbo.tex
	cd main/chapter1/fig/other                             && rm -f             com_chain_inter.pdf
	cd main/chapter2/fig/polar/algos_comparison/           && rubber --clean -d algos_comparison.tex
	cd main/chapter2/fig/polar/scl_l/                      && rubber --clean -d scl_l.tex
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber --clean -d scl_bfer.tex
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber --clean -d scl_bfer_crc.tex
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber --clean -d scl_bfer_rep.tex
	cd main/chapter2/fig/polar/scl_adaptive/               && rubber --clean -d scl_adaptive.tex
	cd main/chapter2/fig/turbo/bfer/                       && rm -f             bfer_old.pdf
	cd main/chapter2/fig/turbo/bfer/                       && rubber --clean -d bfer.tex
	cd main/chapter2/fig/scma/ber_uncoded/                 && rubber --clean -d ber_uncoded.tex
	cd main/chapter2/fig/scma/ber_uncoded_iter/            && rubber --clean -d ber_uncoded_iter.tex
	cd main/chapter2/fig/scma/fec/                         && rubber --clean -d fec_1_2.tex
	cd main/chapter2/fig/scma/fec/                         && rubber --clean -d fec_1_3.tex
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rm -f             mandelbrot_speedup_old.pdf
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rubber --clean -d mandelbrot_speedup_32bit.tex
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rubber --clean -d mandelbrot_speedup_64bit.tex
	cd main/chapter3/fig/polar/sc_tree_cut/                && rm -f             sc_tree_cut.pdf
	cd main/chapter3/fig/polar/sc_tree_cut/                && rubber --clean -d sc_tree_cut_inter.tex
	cd main/chapter3/fig/polar/sc_tree_cut/                && rubber --clean -d sc_tree_cut_intra.tex
	cd main/chapter3/fig/polar/scl_tree_cut/               && rubber --clean -d scl_tree_cut.tex
	cd main/chapter3/fig/polar/scl_spc/                    && rm -f             scl_spc.pdf
	cd main/chapter3/fig/polar/scl_spc/                    && rm -f             scl_spc_diff_old.pdf
	cd main/chapter3/fig/polar/scl_spc/                    && rubber --clean -d scl_spc_diff.tex
	cd main/chapter3/fig/polar/scl_cpy_vs_ptr/             && rubber --clean -d scl_cpy_vs_ptr.tex
	cd main/chapter4/fig/soft_archi/                       && rm -f             com_chain_task_module.pdf
	cd main/chapter4/fig/simu/speedup                      && rubber --clean -d speedup.tex
	cd main/chapter4/fig/simu/throughput                   && rubber --clean -d throughput.tex
	cd main/chapter5/fig/polar/sc_energy_implems_vs/       && rm -f             sc_energy_implems_vs_old.pdf
	cd main/chapter5/fig/polar/sc_energy_implems_vs/       && rubber --clean -d sc_energy_implems_vs_total.tex
	cd main/chapter5/fig/polar/sc_energy_implems_vs/       && rubber --clean -d sc_energy_implems_vs_mem.tex
	cd main/chapter5/fig/polar/sc_energy_freq/             && rm -f             sc_energy_freq_old.pdf
	cd main/chapter5/fig/polar/sc_energy_freq/             && rubber --clean -d sc_energy_freq_a7.tex
	cd main/chapter5/fig/polar/sc_energy_freq/             && rubber --clean -d sc_energy_freq_a15.tex
	cd main/chapter5/fig/polar/sc_energy_rate/             && rm -f             sc_energy_rate_N2048_old.pdf
	cd main/chapter5/fig/polar/sc_energy_rate/             && rm -f             sc_energy_rate_N32768_old.pdf
	cd main/chapter5/fig/polar/sc_energy_rate/             && rubber --clean -d sc_energy_rate_N2048.tex
	cd main/chapter5/fig/polar/sc_energy_rate/             && rubber --clean -d sc_energy_rate_N32768.tex
	cd main/chapter5/fig/polar/sc_gen_thr_intra/           && rm -f             sc_gen_thr_intra_old.pdf
	cd main/chapter5/fig/polar/sc_gen_thr_intra/           && rubber --clean -d sc_gen_thr_intra_arm.tex
	cd main/chapter5/fig/polar/sc_gen_thr_intra/           && rubber --clean -d sc_gen_thr_intra_x86.tex
	cd main/chapter5/fig/polar/sc_gen_thr_inter/           && rm -f             sc_gen_thr_inter_old.pdf
	cd main/chapter5/fig/polar/sc_gen_thr_inter/           && rubber --clean -d sc_gen_thr_inter_arm.tex
	cd main/chapter5/fig/polar/sc_gen_thr_inter/           && rubber --clean -d sc_gen_thr_inter_x86.tex
	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && rm -f             sc_gen_l1i_size_old.pdf
	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && rm -f             sc_gen_l1i_size_small_old.pdf
	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && rubber --clean -d sc_gen_l1i_size_w_comp.tex
	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && rubber --clean -d sc_gen_l1i_size_wo_comp.tex
	cd main/chapter5/fig/turbo/thr/                        && rm -f             thr.pdf
	cd main/chapter5/fig/turbo/energy/                     && rm -f             energy.pdf
	cd main/chapter5/fig/scma/energy/                      && rubber --clean -d energy.tex
	cd main/chapter5/fig/scma/profiling/                   && rubber --clean -d profiling.tex

open:
	xdg-open my_thesis.pdf &