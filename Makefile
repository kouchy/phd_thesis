.phony: all clean mrproper

all: figs \
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

figs: titlepage \
      chapter1_fig \
      chapter2_fig \
      chapter3_fig \
      chapter4_fig \
      chapter5_fig \
      chapter6_fig

titlepage: head/titlepage.tex
	cd head                                                && rubber -d titlepage.tex

chapter1_fig: main/chapter1/fig/intro/com_chain/com_chain_old.svg \
              main/chapter1/fig/intro/com_chain/com_chain.tex \
              main/chapter1/fig/intro/com_chain/colors \
              main/chapter1/fig/simu/com_chain/com_chain_old.svg \
              main/chapter1/fig/simu/com_chain/com_chain.tex \
              main/chapter1/fig/simu/com_chain/colors \
              main/chapter1/fig/simu/in_out/in_out_old.svg \
              main/chapter1/fig/simu/in_out/in_out.tex \
              main/chapter1/fig/simu/in_out/colors \
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
	cd main/chapter1/fig/intro/com_chain                   && rubber -d com_chain.tex
	cd main/chapter1/fig/simu/com_chain                    && rubber -d com_chain.tex
	cd main/chapter1/fig/simu/in_out                       && rubber -d in_out.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber -d bfer_bch_rs.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber -d bfer_ldpc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber -d bfer_polar.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber -d bfer_rsc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber -d bfer_tpc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber -d bfer_turbo.tex
#	cd main/chapter1/fig/intro/com_chain                   && inkscape  com_chain_old.svg   --export-pdf=com_chain_old.pdf
#	cd main/chapter1/fig/simu/com_chain                    && inkscape  com_chain_old.svg   --export-pdf=com_chain_old.pdf
#	cd main/chapter1/fig/simu/in_out                       && inkscape  in_out_old.svg      --export-pdf=in_out_old.pdf
#	cd main/chapter1/fig/other                             && inkscape  com_chain_inter.svg --export-pdf=com_chain_inter.pdf

chapter2_fig: main/chapter2/fig/polar/sc_decoder/sc_decoder.tex \
              main/chapter2/fig/polar/sc_decoder/colors \
              main/chapter2/fig/polar/tree_pruning_example/tree_pruning_example_old.fig \
              main/chapter2/fig/polar/tree_pruning_example/tree_pruning_example.tex \
              main/chapter2/fig/polar/tree_pruning_example/colors \
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
              main/chapter2/fig/ldpc/tanner_graph/tanner_graph.tex \
              main/chapter2/fig/ldpc/tanner_graph/colors \
              main/chapter2/fig/scma/codec/codec_chain.tex \
              main/chapter2/fig/scma/codec/codec_dec.tex \
              main/chapter2/fig/scma/codec/codec_enc.tex \
              main/chapter2/fig/scma/codec/codec_graph.tex \
              main/chapter2/fig/scma/codec/colors \
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
	cd main/chapter2/fig/polar/sc_decoder/                 && rubber -d sc_decoder.tex
	cd main/chapter2/fig/polar/tree_pruning_example/       && rubber -d tree_pruning_example.tex
	cd main/chapter2/fig/polar/algos_comparison/           && rubber -d algos_comparison.tex
	cd main/chapter2/fig/polar/scl_l/                      && rubber -d scl_l.tex
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber -d scl_bfer.tex
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber -d scl_bfer_crc.tex
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber -d scl_bfer_rep.tex
	cd main/chapter2/fig/polar/scl_adaptive/               && rubber -d scl_adaptive.tex
	cd main/chapter2/fig/turbo/bfer/                       && rubber -d bfer.tex
	cd main/chapter2/fig/ldpc/tanner_graph/                && rubber -d tanner_graph.tex
	cd main/chapter2/fig/scma/codec/                       && rubber -d codec_chain.tex
	cd main/chapter2/fig/scma/codec/                       && rubber -d codec_dec.tex
	cd main/chapter2/fig/scma/codec/                       && rubber -d codec_enc.tex
	cd main/chapter2/fig/scma/codec/                       && rubber -d codec_graph.tex
	cd main/chapter2/fig/scma/ber_uncoded/                 && rubber -d ber_uncoded.tex
	cd main/chapter2/fig/scma/ber_uncoded_iter/            && rubber -d ber_uncoded_iter.tex
	cd main/chapter2/fig/scma/fec/                         && rubber -d fec_1_2.tex
	cd main/chapter2/fig/scma/fec/                         && rubber -d fec_1_3.tex
#	cd main/chapter2/fig/turbo/bfer/                       && gnuplot   bfer_old.gp

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
              main/chapter3/fig/vectorization/inter_frame/inter_frame.tex \
              main/chapter3/fig/vectorization/inter_frame/colors \
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
              main/chapter3/fig/polar/patterns/patterns.tex \
              main/chapter3/fig/polar/patterns/colors \
              main/chapter3/fig/polar/sc_gen_compression/sc_gen_compression.tex \
              main/chapter3/fig/polar/sc_gen_compression/sc_gen_no_compression.tex \
              main/chapter3/fig/polar/sc_gen_compression/sc_gen_compression_legend.tex \
              main/chapter3/fig/polar/sc_gen_compression/colors \
              main/chapter3/fig/polar/sc_gen_compression/styles.tex \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/scl_cpy_vs_ptr.tex \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/colors \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_cpy_8.txt \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_cpy_16.txt \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_cpy_32.txt \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_ptr_8.txt \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_ptr_16.txt \
              main/chapter3/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_ptr_32.txt \
              main/chapter3/fig/scma/simd_norm/simd_norm_aos.tex \
              main/chapter3/fig/scma/simd_norm/simd_norm_soa.tex \
              main/chapter3/fig/scma/simd_norm/colors \
              main/chapter3/fig/scma/simd_exp_mul/simd_exp.tex \
              main/chapter3/fig/scma/simd_exp_mul/simd_final_guess.tex \
              main/chapter3/fig/scma/simd_exp_mul/colors
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rubber -d mandelbrot_speedup_32bit.tex
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rubber -d mandelbrot_speedup_64bit.tex
	cd main/chapter3/fig/vectorization/inter_frame/        && rubber -d inter_frame.tex
	cd main/chapter3/fig/polar/sc_tree_cut/                && rubber -d sc_tree_cut_inter.tex
	cd main/chapter3/fig/polar/sc_tree_cut/                && rubber -d sc_tree_cut_intra.tex
	cd main/chapter3/fig/polar/scl_tree_cut/               && rubber -d scl_tree_cut.tex
	cd main/chapter3/fig/polar/scl_spc/                    && rubber -d scl_spc_diff.tex
	cd main/chapter3/fig/polar/patterns/                   && rubber -d patterns.tex
	cd main/chapter3/fig/polar/sc_gen_compression/         && rubber -d sc_gen_compression.tex
	cd main/chapter3/fig/polar/sc_gen_compression/         && rubber -d sc_gen_no_compression.tex
	cd main/chapter3/fig/polar/sc_gen_compression/         && rubber -d sc_gen_compression_legend.tex
	cd main/chapter3/fig/polar/scl_cpy_vs_ptr/             && rubber -d scl_cpy_vs_ptr.tex
	cd main/chapter3/fig/scma/simd_norm/                   && rubber -d simd_norm_aos.tex
	cd main/chapter3/fig/scma/simd_norm/                   && rubber -d simd_norm_soa.tex
	cd main/chapter3/fig/scma/simd_exp_mul/                && rubber -d simd_exp.tex
	cd main/chapter3/fig/scma/simd_exp_mul/                && rubber -d simd_final_guess.tex
#	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && gnuplot   mandelbrot_speedup_old.gp
#	cd main/chapter3/fig/polar/sc_tree_cut/                && gnuplot   sc_tree_cut_old.gp
#	cd main/chapter3/fig/polar/scl_spc/                    && gnuplot   scl_spc.gp
#	cd main/chapter3/fig/polar/scl_spc/                    && gnuplot   scl_spc_diff_old.gp

chapter4_fig: main/chapter4/fig/soft_archi/com_chain_task_module/com_chain_task_module_old.svg \
              main/chapter4/fig/soft_archi/com_chain_task_module/com_chain_task_module.tex \
              main/chapter4/fig/soft_archi/com_chain_task_module/colors
	cd main/chapter4/fig/soft_archi/com_chain_task_module/ && rubber -d com_chain_task_module.tex
#	cd main/chapter4/fig/soft_archi/com_chain_task_module/ && inkscape  com_chain_task_module_old.svg --export-pdf=com_chain_task_module_old.pdf

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
              main/chapter5/fig/polar/sc_colgate/sc_colgate.tex \
              main/chapter5/fig/polar/sc_colgate/colors \
              main/chapter5/fig/turbo/thr/thr_old.gp \
              main/chapter5/fig/turbo/thr/dat/data.txt \
              main/chapter5/fig/turbo/thr/thr.tex \
              main/chapter5/fig/turbo/thr/dat/data_E5_01c_AVX.txt \
              main/chapter5/fig/turbo/thr/dat/data_E5_01c_SSE.txt \
              main/chapter5/fig/turbo/thr/dat/data_E5_04c_AVX.txt \
              main/chapter5/fig/turbo/thr/dat/data_E5_04c_SSE.txt \
              main/chapter5/fig/turbo/thr/dat/data_E5_12c_AVX.txt \
              main/chapter5/fig/turbo/thr/dat/data_E5_12c_SSE.txt \
              main/chapter5/fig/turbo/thr/dat/data_E5_24c_AVX.txt \
              main/chapter5/fig/turbo/thr/dat/data_E5_24c_SSE.txt \
              main/chapter5/fig/turbo/thr/dat/data_i7_01c_AVX.txt \
              main/chapter5/fig/turbo/thr/dat/data_i7_01c_SSE.txt \
              main/chapter5/fig/turbo/thr/dat/data_i7_04c_AVX.txt \
              main/chapter5/fig/turbo/thr/dat/data_i7_04c_SSE.txt \
              main/chapter5/fig/turbo/energy/energy_old.gp \
              main/chapter5/fig/turbo/energy/dat/data.txt \
              main/chapter5/fig/turbo/energy/energy.tex \
              main/chapter5/fig/turbo/energy/dat/data_K1024_AVX.txt \
              main/chapter5/fig/turbo/energy/dat/data_K1024_SSE.txt \
              main/chapter5/fig/turbo/energy/dat/data_K6144_AVX.txt \
              main/chapter5/fig/turbo/energy/dat/data_K6144_SSE.txt \
              main/chapter5/fig/scma/energy/energy.tex \
              main/chapter5/fig/scma/energy/colors \
              main/chapter5/fig/scma/profiling/profiling.tex \
              main/chapter5/fig/scma/profiling/colors \
              main/chapter5/fig/simu/speedup/speedup.tex \
              main/chapter5/fig/simu/speedup/colors \
              main/chapter5/fig/simu/speedup/dat/AMD_Ryzen_7_2700X.txt \
              main/chapter5/fig/simu/speedup/dat/Cavium_ThunderX2_CN9975.txt \
              main/chapter5/fig/simu/speedup/dat/Intel_Xeon_E5-2680v3.txt \
              main/chapter5/fig/simu/speedup/dat/Intel_Xeon_Gold_6140.txt \
              main/chapter5/fig/simu/speedup/dat/Intel_Xeon_Gold_6142.txt \
              main/chapter5/fig/simu/speedup/dat/Intel_Xeon_Phi_7230.txt \
              main/chapter5/fig/simu/throughput/throughput.tex \
              main/chapter5/fig/simu/throughput/colors \
              main/chapter5/fig/simu/chain/chain.tex \
              main/chapter5/fig/simu/chain/colors
	cd main/chapter5/fig/polar/sc_energy_implems_vs/       && rubber -d sc_energy_implems_vs_total.tex
	cd main/chapter5/fig/polar/sc_energy_implems_vs/       && rubber -d sc_energy_implems_vs_mem.tex
	cd main/chapter5/fig/polar/sc_energy_freq/             && rubber -d sc_energy_freq_a7.tex
	cd main/chapter5/fig/polar/sc_energy_freq/             && rubber -d sc_energy_freq_a15.tex
	cd main/chapter5/fig/polar/sc_energy_rate/             && rubber -d sc_energy_rate_N2048.tex
	cd main/chapter5/fig/polar/sc_energy_rate/             && rubber -d sc_energy_rate_N32768.tex
	cd main/chapter5/fig/polar/sc_gen_thr_intra/           && rubber -d sc_gen_thr_intra_arm.tex
	cd main/chapter5/fig/polar/sc_gen_thr_intra/           && rubber -d sc_gen_thr_intra_x86.tex
	cd main/chapter5/fig/polar/sc_gen_thr_inter/           && rubber -d sc_gen_thr_inter_arm.tex
	cd main/chapter5/fig/polar/sc_gen_thr_inter/           && rubber -d sc_gen_thr_inter_x86.tex
	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && rubber -d sc_gen_l1i_size_w_comp.tex
	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && rubber -d sc_gen_l1i_size_wo_comp.tex
	cd main/chapter5/fig/polar/sc_colgate/                 && rubber -d sc_colgate.tex
	cd main/chapter5/fig/turbo/thr/                        && rubber -d thr.tex
	cd main/chapter5/fig/turbo/energy/                     && rubber -d energy.tex
	cd main/chapter5/fig/scma/energy/                      && rubber -d energy.tex
	cd main/chapter5/fig/scma/profiling/                   && rubber -d profiling.tex
	cd main/chapter5/fig/simu/speedup                      && rubber -d speedup.tex
	cd main/chapter5/fig/simu/throughput                   && rubber -d throughput.tex
	cd main/chapter5/fig/simu/chain                        && rubber -d chain.tex
#	cd main/chapter5/fig/polar/sc_energy_implems_vs/       && gnuplot   sc_energy_implems_vs_old.gp
#	cd main/chapter5/fig/polar/sc_energy_freq/             && gnuplot   sc_energy_freq_old.gp
#	cd main/chapter5/fig/polar/sc_energy_rate/             && gnuplot   sc_energy_rate_old.gp
#	cd main/chapter5/fig/polar/sc_gen_thr_intra/           && gnuplot   sc_gen_thr_intra_old.gp
#	cd main/chapter5/fig/polar/sc_gen_thr_inter/           && gnuplot   sc_gen_thr_inter_old.gp
#	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && gnuplot   sc_gen_l1i_size_old.gp
#	cd main/chapter5/fig/turbo/thr/                        && gnuplot   thr_old.gp
#	cd main/chapter5/fig/turbo/energy/                     && gnuplot   energy_old.gp

chapter6_fig: main/chapter6/fig/dsl/loop/loop.tex \
              main/chapter6/fig/dsl/loop/colors \
              main/chapter6/fig/dsl/nested_loops/nested_loops.tex \
              main/chapter6/fig/dsl/nested_loops/colors \
              main/chapter6/fig/dsl/sequence/sequence_chain.tex \
              main/chapter6/fig/dsl/sequence/sequence_generic.tex \
              main/chapter6/fig/dsl/sequence/colors \
              main/chapter6/fig/dsl/sequence_dup/sequence_dup.tex \
              main/chapter6/fig/dsl/sequence_dup/colors \
              main/chapter6/fig/dsl/pipeline/pipeline_usr.tex \
              main/chapter6/fig/dsl/pipeline/pipeline_adp.tex \
              main/chapter6/fig/dsl/pipeline/colors \
              main/chapter6/fig/dvbs2/transmitter/transmitter.tex \
              main/chapter6/fig/dvbs2/transmitter/colors \
              main/chapter6/fig/dvbs2/receiver/receiver_transmission.tex \
              main/chapter6/fig/dvbs2/receiver/receiver_learning.tex \
              main/chapter6/fig/dvbs2/receiver/colors \
              main/chapter6/fig/dvbs2/pipeline_copy/pipeline_copy_dat.tex \
              main/chapter6/fig/dvbs2/pipeline_copy/pipeline_copy_ptr.tex \
              main/chapter6/fig/dvbs2/pipeline_copy/colors \
              main/chapter6/fig/dvbs2/bfer/dat/data_8PSK_R_8_9_BB.txt \
              main/chapter6/fig/dvbs2/bfer/dat/data_8PSK_R_8_9_sim.txt \
              main/chapter6/fig/dvbs2/bfer/dat/data_8PSK_R_8_9_rad.txt \
              main/chapter6/fig/dvbs2/bfer/dat/data_QPSK_R_8_9_BB.txt \
              main/chapter6/fig/dvbs2/bfer/dat/data_QPSK_R_8_9_sim.txt \
              main/chapter6/fig/dvbs2/bfer/dat/data_QPSK_R_8_9_rad.txt \
              main/chapter6/fig/dvbs2/bfer/dat/data_QPSK_R_3_5_BB.txt \
              main/chapter6/fig/dvbs2/bfer/dat/data_QPSK_R_3_5_sim.txt \
              main/chapter6/fig/dvbs2/bfer/dat/data_QPSK_R_3_5_rad.txt \
              main/chapter6/fig/dvbs2/bfer/bfer.tex \
              main/chapter6/fig/dvbs2/bfer/colors
	cd main/chapter6/fig/dsl/loop/                         && rubber -d loop.tex
	cd main/chapter6/fig/dsl/nested_loops/                 && rubber -d nested_loops.tex
	cd main/chapter6/fig/dsl/sequence/                     && rubber -d sequence_chain.tex
	cd main/chapter6/fig/dsl/sequence/                     && rubber -d sequence_generic.tex
	cd main/chapter6/fig/dsl/sequence_dup/                 && rubber -d sequence_dup.tex
	cd main/chapter6/fig/dsl/pipeline/                     && rubber -d pipeline_usr.tex
	cd main/chapter6/fig/dsl/pipeline/                     && rubber -d pipeline_adp.tex
	cd main/chapter6/fig/dvbs2/transmitter/                && rubber -d transmitter.tex
	cd main/chapter6/fig/dvbs2/receiver/                   && rubber -d receiver_transmission.tex
	cd main/chapter6/fig/dvbs2/receiver/                   && rubber -d receiver_learning.tex
	cd main/chapter6/fig/dvbs2/pipeline_copy/              && rubber -d pipeline_copy_dat.tex
	cd main/chapter6/fig/dvbs2/pipeline_copy/              && rubber -d pipeline_copy_ptr.tex
	cd main/chapter6/fig/dvbs2/bfer/                       && rubber -d bfer.tex

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
	cd main/chapter1/fig/intro/com_chain                   && rubber --clean com_chain
	cd main/chapter1/fig/simu/com_chain                    && rubber --clean com_chain
	cd main/chapter1/fig/simu/in_out                       && rubber --clean in_out
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_bch_rs
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_ldpc
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_polar
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_rsc
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_tpc
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_turbo
	cd main/chapter2/fig/polar/sc_decoder/                 && rubber --clean sc_decoder
	cd main/chapter2/fig/polar/tree_pruning_example/       && rubber --clean tree_pruning_example
	cd main/chapter2/fig/polar/algos_comparison/           && rubber --clean algos_comparison
	cd main/chapter2/fig/polar/scl_l/                      && rubber --clean scl_l
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber --clean scl_bfer
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber --clean scl_bfer_crc
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber --clean scl_bfer_rep
	cd main/chapter2/fig/polar/scl_adaptive/               && rubber --clean scl_adaptive
	cd main/chapter2/fig/turbo/bfer/                       && rubber --clean bfer
	cd main/chapter2/fig/ldpc/tanner_graph/                && rubber --clean tanner_graph
	cd main/chapter2/fig/scma/codec/                       && rubber --clean codec_chain
	cd main/chapter2/fig/scma/codec/                       && rubber --clean codec_dec
	cd main/chapter2/fig/scma/codec/                       && rubber --clean codec_enc
	cd main/chapter2/fig/scma/codec/                       && rubber --clean codec_graph
	cd main/chapter2/fig/scma/ber_uncoded/                 && rubber --clean ber_uncoded
	cd main/chapter2/fig/scma/ber_uncoded_iter/            && rubber --clean ber_uncoded_iter
	cd main/chapter2/fig/scma/fec/                         && rubber --clean fec_1_2
	cd main/chapter2/fig/scma/fec/                         && rubber --clean fec_1_3
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rubber --clean mandelbrot_speedup_32bit
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rubber --clean mandelbrot_speedup_64bit
	cd main/chapter3/fig/vectorization/inter_frame/        && rubber --clean inter_frame
	cd main/chapter3/fig/polar/sc_tree_cut/                && rubber --clean sc_tree_cut_inter
	cd main/chapter3/fig/polar/sc_tree_cut/                && rubber --clean sc_tree_cut_intra
	cd main/chapter3/fig/polar/scl_tree_cut/               && rubber --clean scl_tree_cut
	cd main/chapter3/fig/polar/scl_spc/                    && rubber --clean scl_spc_diff
	cd main/chapter3/fig/polar/patterns/                   && rubber --clean patterns
	cd main/chapter3/fig/polar/sc_gen_compression/         && rubber --clean sc_gen_compression
	cd main/chapter3/fig/polar/sc_gen_compression/         && rubber --clean sc_gen_no_compression
	cd main/chapter3/fig/polar/sc_gen_compression/         && rubber --clean sc_gen_compression_legend
	cd main/chapter3/fig/polar/scl_cpy_vs_ptr/             && rubber --clean scl_cpy_vs_ptr
	cd main/chapter3/fig/scma/simd_norm/                   && rubber --clean simd_norm_aos
	cd main/chapter3/fig/scma/simd_norm/                   && rubber --clean simd_norm_soa
	cd main/chapter3/fig/scma/simd_exp_mul/                && rubber --clean simd_exp
	cd main/chapter3/fig/scma/simd_exp_mul/                && rubber --clean simd_final_guess
	cd main/chapter4/fig/soft_archi/com_chain_task_module/ && rubber --clean com_chain_task_module
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
	cd main/chapter5/fig/polar/sc_colgate/                 && rubber --clean sc_colgate
	cd main/chapter5/fig/turbo/thr/                        && rubber --clean thr
	cd main/chapter5/fig/turbo/energy/                     && rubber --clean energy
	cd main/chapter5/fig/scma/energy/                      && rubber --clean energy
	cd main/chapter5/fig/scma/profiling/                   && rubber --clean profiling
	cd main/chapter5/fig/simu/speedup                      && rubber --clean speedup
	cd main/chapter5/fig/simu/throughput                   && rubber --clean throughput
	cd main/chapter5/fig/simu/chain                        && rubber --clean chain
	cd main/chapter6/fig/dsl/loop/                         && rubber --clean loop
	cd main/chapter6/fig/dsl/nested_loops/                 && rubber --clean nested_loops
	cd main/chapter6/fig/dsl/sequence/                     && rubber --clean sequence_chain
	cd main/chapter6/fig/dsl/sequence/                     && rubber --clean sequence_generic
	cd main/chapter6/fig/dsl/sequence_dup/                 && rubber --clean sequence_dup
	cd main/chapter6/fig/dsl/pipeline/                     && rubber --clean pipeline_usr
	cd main/chapter6/fig/dsl/pipeline/                     && rubber --clean pipeline_adp
	cd main/chapter6/fig/dvbs2/transmitter/                && rubber --clean transmitter
	cd main/chapter6/fig/dvbs2/receiver/                   && rubber --clean receiver_transmission
	cd main/chapter6/fig/dvbs2/receiver/                   && rubber --clean receiver_learning
	cd main/chapter6/fig/dvbs2/pipeline_copy/              && rubber --clean pipeline_copy_dat
	cd main/chapter6/fig/dvbs2/pipeline_copy/              && rubber --clean pipeline_copy_ptr
	cd main/chapter6/fig/dvbs2/bfer/                       && rubber --clean bfer


mrproper: clean4all
	cd ./                                                  && rubber --clean -d my_thesis.tex
	cd head                                                && rubber --clean -d titlepage.tex
	cd main/chapter1/fig/intro/com_chain                   && rubber --clean -d com_chain.tex
	cd main/chapter1/fig/simu/com_chain                    && rubber --clean -d com_chain.tex
	cd main/chapter1/fig/simu/in_out                       && rubber --clean -d in_out.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_bch_rs.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_ldpc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_polar.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_rsc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_tpc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_turbo.tex
	cd main/chapter2/fig/polar/sc_decoder/                 && rubber --clean -d sc_decoder.tex
	cd main/chapter2/fig/polar/tree_pruning_example/       && rubber --clean -d tree_pruning_example.tex
	cd main/chapter2/fig/polar/algos_comparison/           && rubber --clean -d algos_comparison.tex
	cd main/chapter2/fig/polar/scl_l/                      && rubber --clean -d scl_l.tex
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber --clean -d scl_bfer.tex
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber --clean -d scl_bfer_crc.tex
	cd main/chapter2/fig/polar/scl_bfer/                   && rubber --clean -d scl_bfer_rep.tex
	cd main/chapter2/fig/polar/scl_adaptive/               && rubber --clean -d scl_adaptive.tex
	cd main/chapter2/fig/turbo/bfer/                       && rubber --clean -d bfer.tex
	cd main/chapter2/fig/ldpc/tanner_graph/                && rubber --clean -d tanner_graph.tex
	cd main/chapter2/fig/scma/codec/                       && rubber --clean -d codec_chain.tex
	cd main/chapter2/fig/scma/codec/                       && rubber --clean -d codec_dec.tex
	cd main/chapter2/fig/scma/codec/                       && rubber --clean -d codec_enc.tex
	cd main/chapter2/fig/scma/codec/                       && rubber --clean -d codec_graph.tex
	cd main/chapter2/fig/scma/ber_uncoded/                 && rubber --clean -d ber_uncoded.tex
	cd main/chapter2/fig/scma/ber_uncoded_iter/            && rubber --clean -d ber_uncoded_iter.tex
	cd main/chapter2/fig/scma/fec/                         && rubber --clean -d fec_1_2.tex
	cd main/chapter2/fig/scma/fec/                         && rubber --clean -d fec_1_3.tex
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rubber --clean -d mandelbrot_speedup_32bit.tex
	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rubber --clean -d mandelbrot_speedup_64bit.tex
	cd main/chapter3/fig/vectorization/inter_frame/        && rubber --clean -d inter_frame.tex
	cd main/chapter3/fig/polar/sc_tree_cut/                && rubber --clean -d sc_tree_cut_inter.tex
	cd main/chapter3/fig/polar/sc_tree_cut/                && rubber --clean -d sc_tree_cut_intra.tex
	cd main/chapter3/fig/polar/scl_tree_cut/               && rubber --clean -d scl_tree_cut.tex
	cd main/chapter3/fig/polar/scl_spc/                    && rubber --clean -d scl_spc_diff.tex
	cd main/chapter3/fig/polar/patterns/                   && rubber --clean -d patterns.tex
	cd main/chapter3/fig/polar/sc_gen_compression/         && rubber --clean -d sc_gen_compression.tex
	cd main/chapter3/fig/polar/sc_gen_compression/         && rubber --clean -d sc_gen_no_compression.tex
	cd main/chapter3/fig/polar/sc_gen_compression/         && rubber --clean -d sc_gen_compression_legend.tex
	cd main/chapter3/fig/polar/scl_cpy_vs_ptr/             && rubber --clean -d scl_cpy_vs_ptr.tex
	cd main/chapter3/fig/scma/simd_norm/                   && rubber --clean -d simd_norm_aos.tex
	cd main/chapter3/fig/scma/simd_norm/                   && rubber --clean -d simd_norm_soa.tex
	cd main/chapter3/fig/scma/simd_exp_mul/                && rubber --clean -d simd_exp.tex
	cd main/chapter3/fig/scma/simd_exp_mul/                && rubber --clean -d simd_final_guess.tex
	cd main/chapter4/fig/soft_archi/com_chain_task_module/ && rubber --clean -d com_chain_task_module.tex
	cd main/chapter5/fig/polar/sc_energy_implems_vs/       && rubber --clean -d sc_energy_implems_vs_total.tex
	cd main/chapter5/fig/polar/sc_energy_implems_vs/       && rubber --clean -d sc_energy_implems_vs_mem.tex
	cd main/chapter5/fig/polar/sc_energy_freq/             && rubber --clean -d sc_energy_freq_a7.tex
	cd main/chapter5/fig/polar/sc_energy_freq/             && rubber --clean -d sc_energy_freq_a15.tex
	cd main/chapter5/fig/polar/sc_energy_rate/             && rubber --clean -d sc_energy_rate_N2048.tex
	cd main/chapter5/fig/polar/sc_energy_rate/             && rubber --clean -d sc_energy_rate_N32768.tex
	cd main/chapter5/fig/polar/sc_gen_thr_intra/           && rubber --clean -d sc_gen_thr_intra_arm.tex
	cd main/chapter5/fig/polar/sc_gen_thr_intra/           && rubber --clean -d sc_gen_thr_intra_x86.tex
	cd main/chapter5/fig/polar/sc_gen_thr_inter/           && rubber --clean -d sc_gen_thr_inter_arm.tex
	cd main/chapter5/fig/polar/sc_gen_thr_inter/           && rubber --clean -d sc_gen_thr_inter_x86.tex
	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && rubber --clean -d sc_gen_l1i_size_w_comp.tex
	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && rubber --clean -d sc_gen_l1i_size_wo_comp.tex
	cd main/chapter5/fig/polar/sc_colgate/                 && rubber --clean -d sc_colgate.tex
	cd main/chapter5/fig/turbo/thr/                        && rubber --clean -d thr.tex
	cd main/chapter5/fig/turbo/energy/                     && rubber --clean -d energy.tex
	cd main/chapter5/fig/scma/energy/                      && rubber --clean -d energy.tex
	cd main/chapter5/fig/scma/profiling/                   && rubber --clean -d profiling.tex
	cd main/chapter5/fig/simu/speedup                      && rubber --clean -d speedup.tex
	cd main/chapter5/fig/simu/throughput                   && rubber --clean -d throughput.tex
	cd main/chapter5/fig/simu/chain                        && rubber --clean -d chain.tex
	cd main/chapter6/fig/dsl/loop/                         && rubber --clean -d loop.tex
	cd main/chapter6/fig/dsl/nested_loops/                 && rubber --clean -d nested_loops.tex
	cd main/chapter6/fig/dsl/sequence/                     && rubber --clean -d sequence_chain.tex
	cd main/chapter6/fig/dsl/sequence/                     && rubber --clean -d sequence_generic.tex
	cd main/chapter6/fig/dsl/sequence_dup/                 && rubber --clean -d sequence_dup.tex
	cd main/chapter6/fig/dsl/pipeline/                     && rubber --clean -d pipeline_usr.tex
	cd main/chapter6/fig/dsl/pipeline/                     && rubber --clean -d pipeline_adp.tex
	cd main/chapter6/fig/dvbs2/transmitter/                && rubber --clean -d transmitter.tex
	cd main/chapter6/fig/dvbs2/receiver/                   && rubber --clean -d receiver_transmission.tex
	cd main/chapter6/fig/dvbs2/receiver/                   && rubber --clean -d receiver_learning.tex
	cd main/chapter6/fig/dvbs2/pipeline_copy/              && rubber --clean -d pipeline_copy_dat.tex
	cd main/chapter6/fig/dvbs2/pipeline_copy/              && rubber --clean -d pipeline_copy_ptr.tex
	cd main/chapter6/fig/dvbs2/bfer/                       && rubber --clean -d bfer.tex
#	cd main/chapter1/fig/intro/com_chain                   && rm -f             com_chain_old.pdf
#	cd main/chapter1/fig/simu/com_chain                    && rm -f             com_chain_old.pdf
#	cd main/chapter1/fig/simu/in_out                       && rm -f             in_out_old.pdf
#	cd main/chapter1/fig/other                             && rm -f             com_chain_inter.pdf
#	cd main/chapter2/fig/turbo/bfer/                       && rm -f             bfer_old.pdf
#	cd main/chapter3/fig/vectorization/mandelbrot_speedup/ && rm -f             mandelbrot_speedup_old.pdf
#	cd main/chapter3/fig/polar/sc_tree_cut/                && rm -f             sc_tree_cut_old.pdf
#	cd main/chapter3/fig/polar/scl_spc/                    && rm -f             scl_spc.pdf
#	cd main/chapter3/fig/polar/scl_spc/                    && rm -f             scl_spc_diff_old.pdf
#	cd main/chapter4/fig/soft_archi/                       && rm -f             com_chain_task_module_old.pdf
#	cd main/chapter5/fig/polar/sc_energy_implems_vs/       && rm -f             sc_energy_implems_vs_old.pdf
#	cd main/chapter5/fig/polar/sc_energy_freq/             && rm -f             sc_energy_freq_old.pdf
#	cd main/chapter5/fig/polar/sc_energy_rate/             && rm -f             sc_energy_rate_N2048_old.pdf
#	cd main/chapter5/fig/polar/sc_energy_rate/             && rm -f             sc_energy_rate_N32768_old.pdf
#	cd main/chapter5/fig/polar/sc_gen_thr_intra/           && rm -f             sc_gen_thr_intra_old.pdf
#	cd main/chapter5/fig/polar/sc_gen_thr_inter/           && rm -f             sc_gen_thr_inter_old.pdf
#	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && rm -f             sc_gen_l1i_size_old.pdf
#	cd main/chapter5/fig/polar/sc_gen_l1i_size/            && rm -f             sc_gen_l1i_size_small_old.pdf
#	cd main/chapter5/fig/turbo/thr/                        && rm -f             thr_old.pdf
#	cd main/chapter5/fig/turbo/energy/                     && rm -f             energy_old.pdf

open:
	xdg-open my_thesis.pdf &