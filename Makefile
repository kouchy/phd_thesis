.phony: all clean mrproper

all: figs \
     settings/colors.tex \
     settings/settings_template.tex \
     settings/settings_custom.tex \
     head/resume.tex \
     head/abstract.tex \
     head/labo.tex \
     head/symbols.tex \
     head/thanks.tex \
     main/introduction.tex \
     main/chapter1.tex \
     main/chapter2.tex \
     main/chapter3.tex \
     main/chapter4.tex \
     main/chapter5.tex \
     main/conclusion.tex \
     tail/bibliography.bib \
     tail/bibliography.tex \
     tail/publications.tex \
     my_thesis.tex
	rubber --unsafe -d my_thesis.tex

fast: settings/colors.tex \
      settings/settings_template.tex \
      settings/settings_custom.tex \
      head/resume.tex \
      head/abstract.tex \
      head/labo.tex \
      head/symbols.tex \
      head/thanks.tex \
      main/introduction.tex \
      main/chapter1.tex \
      main/chapter2.tex \
      main/chapter3.tex \
      main/chapter4.tex \
      main/chapter5.tex \
      main/conclusion.tex \
      tail/bibliography.bib \
      tail/bibliography.tex \
      tail/publications.tex \
      my_thesis.tex
	rubber --unsafe -d my_thesis.tex

figs: titlepage \
      backcover \
      chapter1_fig \
      chapter2_fig \
      chapter3_fig \
      chapter4_fig \
      chapter5_fig

titlepage: head/titlepage.tex
	cd head                                                && rubber -d titlepage.tex

backcover: tail/backcover.tex
	cd tail                                                && rubber -d backcover.tex

chapter1_fig: main/chapter1/fig/intro/com_chain/com_chain.tex \
              main/chapter1/fig/intro/com_chain/settings/colors.tex \
              main/chapter1/fig/simu/com_chain/com_chain.tex \
              main/chapter1/fig/simu/com_chain/settings/colors.tex \
              main/chapter1/fig/simu/in_out/in_out.tex \
              main/chapter1/fig/simu/in_out/settings/colors.tex \
              main/chapter1/fig/simu/bfer/bfer_bch_rs.tex \
              main/chapter1/fig/simu/bfer/bfer_ldpc.tex \
              main/chapter1/fig/simu/bfer/bfer_polar.tex \
              main/chapter1/fig/simu/bfer/bfer_rsc.tex \
              main/chapter1/fig/simu/bfer/bfer_tpc.tex \
              main/chapter1/fig/simu/bfer/bfer_turbo.tex \
              main/chapter1/fig/simu/bfer/settings/colors.tex \
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
              main/chapter1/fig/sdr/base_station/base_station_1G_2G.tex \
              main/chapter1/fig/sdr/base_station/base_station_3G_4G.tex \
              main/chapter1/fig/sdr/base_station/base_station_5G_future.tex \
              main/chapter1/fig/ldpc/bp_cn_update/bp_cn_update.tex \
              main/chapter1/fig/ldpc/bp_cn_update/settings/colors.tex \
              main/chapter1/fig/ldpc/bp_vn_update/bp_vn_update.tex \
              main/chapter1/fig/ldpc/bp_vn_update/settings/colors.tex \
              main/chapter1/fig/polar/sc_decoder/sc_decoder.tex \
              main/chapter1/fig/polar/sc_decoder/settings/colors.tex \
              main/chapter1/fig/polar/tree_pruning_example/tree_pruning_example.tex \
              main/chapter1/fig/polar/tree_pruning_example/settings/colors.tex \
              main/chapter1/fig/scma/codec/codec_chain.tex \
              main/chapter1/fig/scma/codec/codec_dec.tex \
              main/chapter1/fig/scma/codec/codec_enc.tex \
              main/chapter1/fig/scma/codec/codec_graph.tex \
              main/chapter1/fig/scma/codec/settings/colors.tex \
              main/chapter1/fig/ldpc/parity_checks/parity_checks.tex \
              main/chapter1/fig/ldpc/parity_checks/settings/colors.tex \
              main/chapter1/fig/ldpc/parity_check/parity_check.tex \
              main/chapter1/fig/ldpc/parity_check/settings/colors.tex \
              main/chapter1/fig/polar/encoder/encoder.tex \
              main/chapter1/fig/polar/encoder/settings/colors.tex \
              main/chapter1/fig/polar/encoder_sys/encoder_sys.tex \
              main/chapter1/fig/polar/encoder_sys/settings/colors.tex \
              main/chapter1/fig/polar/tree/tree.tex \
              main/chapter1/fig/polar/tree/settings/colors.tex \
              main/chapter1/fig/turbo/sub_encoder/sub_encoder.tex \
              main/chapter1/fig/turbo/sub_encoder/settings/colors.tex \
              main/chapter1/fig/turbo/mealy/mealy.tex \
              main/chapter1/fig/turbo/mealy/settings/colors.tex \
              main/chapter1/fig/turbo/trellis/trellis.tex \
              main/chapter1/fig/turbo/trellis/settings/colors.tex \
              main/chapter1/fig/turbo/encoder/encoder.tex \
              main/chapter1/fig/turbo/encoder/settings/colors.tex \
              main/chapter1/fig/turbo/decoder/decoder.tex \
              main/chapter1/fig/turbo/decoder/settings/colors.tex \
              main/chapter1/fig/turbo/encoder_lte/encoder_lte.tex \
              main/chapter1/fig/turbo/encoder_lte/settings/colors.tex
	cd main/chapter1/fig/intro/com_chain                   && rubber -d com_chain.tex
	cd main/chapter1/fig/simu/com_chain                    && rubber -d com_chain.tex
	cd main/chapter1/fig/simu/in_out                       && rubber -d in_out.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber -d bfer_bch_rs.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber -d bfer_ldpc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber -d bfer_polar.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber -d bfer_rsc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber -d bfer_tpc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber -d bfer_turbo.tex
	cd main/chapter1/fig/sdr/base_station/                 && rubber -d base_station_1G_2G.tex
	cd main/chapter1/fig/sdr/base_station/                 && rubber -d base_station_3G_4G.tex
	cd main/chapter1/fig/sdr/base_station/                 && rubber -d base_station_5G_future.tex
	cd main/chapter1/fig/ldpc/bp_cn_update/                && rubber -d bp_cn_update.tex
	cd main/chapter1/fig/ldpc/bp_vn_update/                && rubber -d bp_vn_update.tex
	cd main/chapter1/fig/polar/sc_decoder/                 && rubber -d sc_decoder.tex
	cd main/chapter1/fig/polar/tree_pruning_example/       && rubber -d tree_pruning_example.tex
	cd main/chapter1/fig/scma/codec/                       && rubber -d codec_chain.tex
	cd main/chapter1/fig/scma/codec/                       && rubber -d codec_dec.tex
	cd main/chapter1/fig/scma/codec/                       && rubber -d codec_enc.tex
	cd main/chapter1/fig/scma/codec/                       && rubber -d codec_graph.tex
	cd main/chapter1/fig/ldpc/parity_checks                && rubber -d parity_checks.tex
	cd main/chapter1/fig/ldpc/parity_check                 && rubber -d parity_check.tex
	cd main/chapter1/fig/polar/encoder                     && rubber -d encoder.tex
	cd main/chapter1/fig/polar/encoder_sys                 && rubber -d encoder_sys.tex
	cd main/chapter1/fig/polar/tree                        && rubber -d tree.tex
	cd main/chapter1/fig/turbo/sub_encoder                 && rubber -d sub_encoder.tex
	cd main/chapter1/fig/turbo/mealy                       && rubber -d mealy.tex
	cd main/chapter1/fig/turbo/trellis                     && rubber -d trellis.tex
	cd main/chapter1/fig/turbo/encoder                     && rubber -d encoder.tex
	cd main/chapter1/fig/turbo/decoder                     && rubber -d decoder.tex
	cd main/chapter1/fig/turbo/encoder_lte                 && rubber -d encoder_lte.tex

chapter2_fig: main/chapter2/src/ldpc/bp_scheduling_hl.cpp \
              main/chapter2/src/ldpc/bp_update_rule_ms.cpp \
              main/chapter2/src/mipp/mli.cpp \
              main/chapter2/src/polar/f_g_h_simd.cpp \
              main/chapter2/src/polar/generated_sc_decoder.cpp \
              main/chapter2/src/simu/awgn/box_muller_simd.cpp \
              main/chapter2/src/simu/quantizer/quantizer_seq.cpp \
              main/chapter2/src/simu/quantizer/quantizer_simd.cpp \
              main/chapter2/src/turbo/alpha_generic.cpp \
              main/chapter2/src/turbo/alpha_unrolled.cpp \
              main/chapter2/fig/vectorization/mandelbrot_speedup/dat/perf_mandelbrot_32bit.dat \
              main/chapter2/fig/vectorization/mandelbrot_speedup/dat/perf_mandelbrot_64bit.dat \
              main/chapter2/fig/vectorization/mandelbrot_speedup/mandelbrot_speedup_32bit.tex \
              main/chapter2/fig/vectorization/mandelbrot_speedup/mandelbrot_speedup_64bit.tex \
              main/chapter2/fig/vectorization/inter_frame/inter_frame.tex \
              main/chapter2/fig/vectorization/inter_frame/settings/colors.tex \
              main/chapter2/fig/vectorization/reordering/reordering.tex \
              main/chapter2/fig/vectorization/reordering/settings/colors.tex \
              main/chapter2/fig/polar/sc_tree_cut/sc_tree_cut_inter.tex \
              main/chapter2/fig/polar/sc_tree_cut/dat/E31225_samples_inter_8b_opti_spc4.dat \
              main/chapter2/fig/polar/sc_tree_cut/dat/E31225_samples_inter_8b_opti_spc4+.dat \
              main/chapter2/fig/polar/sc_tree_cut/dat/E31225_samples_inter_8b_opti_spc16-.dat \
              main/chapter2/fig/polar/sc_tree_cut/sc_tree_cut_intra.tex \
              main/chapter2/fig/polar/sc_tree_cut/dat/E31225_samples_intra_32b_opti_spc4.dat \
              main/chapter2/fig/polar/sc_tree_cut/dat/E31225_samples_intra_32b_opti_spc4+.dat \
              main/chapter2/fig/polar/sc_tree_cut/dat/E31225_samples_intra_32b_opti_spc16-.dat \
              main/chapter2/fig/polar/scl_tree_cut/scl_tree_cut.tex \
              main/chapter2/fig/polar/scl_tree_cut/settings/colors.tex \
              main/chapter2/fig/polar/scl_tree_cut/dat/data_L32_i5-6600K.txt \
              main/chapter2/fig/polar/scl_spc/scl_spc_diff.tex \
              main/chapter2/fig/polar/scl_spc/settings/colors.tex \
              main/chapter2/fig/polar/patterns/patterns.tex \
              main/chapter2/fig/polar/patterns/settings/colors.tex \
              main/chapter2/fig/polar/sc_gen_compression/sc_gen_compression.tex \
              main/chapter2/fig/polar/sc_gen_compression/sc_gen_no_compression.tex \
              main/chapter2/fig/polar/sc_gen_compression/sc_gen_compression_legend.tex \
              main/chapter2/fig/polar/sc_gen_compression/settings/colors.tex \
              main/chapter2/fig/polar/sc_gen_compression/settings/styles.tex \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/scl_cpy_vs_ptr.tex \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/settings/colors.tex \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_cpy_8.txt \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_cpy_16.txt \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_cpy_32.txt \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_ptr_8.txt \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_ptr_16.txt \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_ptr_32.txt \
              main/chapter2/fig/scma/simd_norm/simd_norm_aos_mipp.tex \
              main/chapter2/fig/scma/simd_norm/simd_norm_soa_mipp.tex \
              main/chapter2/fig/scma/simd_norm/settings/colors.tex \
              main/chapter2/fig/scma/simd_exp/simd_exp_mipp.tex \
              main/chapter2/fig/scma/simd_exp/settings/colors.tex \
              main/chapter2/fig/scma/simd_final_beliefs/simd_final_beliefs_mipp.tex \
              main/chapter2/fig/scma/simd_final_beliefs/settings/colors.tex
	cd main/chapter2/fig/vectorization/mandelbrot_speedup/ && rubber -d mandelbrot_speedup_32bit.tex
	cd main/chapter2/fig/vectorization/mandelbrot_speedup/ && rubber -d mandelbrot_speedup_64bit.tex
	cd main/chapter2/fig/vectorization/inter_frame/        && rubber -d inter_frame.tex
	cd main/chapter2/fig/vectorization/reordering/         && rubber -d reordering.tex
	cd main/chapter2/fig/polar/sc_tree_cut/                && rubber -d sc_tree_cut_inter.tex
	cd main/chapter2/fig/polar/sc_tree_cut/                && rubber -d sc_tree_cut_intra.tex
	cd main/chapter2/fig/polar/scl_tree_cut/               && rubber -d scl_tree_cut.tex
	cd main/chapter2/fig/polar/scl_spc/                    && rubber -d scl_spc_diff.tex
	cd main/chapter2/fig/polar/patterns/                   && rubber -d patterns.tex
	cd main/chapter2/fig/polar/sc_gen_compression/         && rubber -d sc_gen_compression.tex
	cd main/chapter2/fig/polar/sc_gen_compression/         && rubber -d sc_gen_no_compression.tex
	cd main/chapter2/fig/polar/sc_gen_compression/         && rubber -d sc_gen_compression_legend.tex
	cd main/chapter2/fig/polar/scl_cpy_vs_ptr/             && rubber -d scl_cpy_vs_ptr.tex
	cd main/chapter2/fig/scma/simd_norm/                   && rubber -d simd_norm_aos_mipp.tex
	cd main/chapter2/fig/scma/simd_norm/                   && rubber -d simd_norm_soa_mipp.tex
	cd main/chapter2/fig/scma/simd_exp/                    && rubber -d simd_exp_mipp.tex
	cd main/chapter2/fig/scma/simd_final_beliefs/          && rubber -d simd_final_beliefs_mipp.tex

chapter3_fig: main/chapter3/src/use_cases/library/modules_allocation.cpp \
              main/chapter3/src/use_cases/library/sockets_binding.cpp \
              main/chapter3/src/use_cases/library/tasks_execution.cpp \
              main/chapter3/src/use_cases/library/repetition_chain.m \
              main/chapter3/src/use_cases/simulator/input.txt \
              main/chapter3/src/use_cases/simulator/output.txt \
              main/chapter3/fig/use_cases/library_task_module/library_task_module.tex \
              main/chapter3/fig/use_cases/library_task_module/settings/colors.tex \
              main/chapter3/fig/ldpc/scheduling/scheduling.tex \
              main/chapter3/fig/ldpc/scheduling/settings/colors.tex \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_flooding_SPA_01_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_flooding_SPA_05_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_flooding_SPA_10_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_flooding_SPA_20_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_flooding_SPA_40_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_hlayered_SPA_01_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_hlayered_SPA_05_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_hlayered_SPA_10_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_hlayered_SPA_20_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_hlayered_SPA_40_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_vlayered_SPA_01_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_vlayered_SPA_05_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_vlayered_SPA_10_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_vlayered_SPA_20_ite.txt \
              main/chapter3/fig/ldpc/scheduling/dat/WiMAX_2304_1152_vlayered_SPA_40_ite.txt \
              main/chapter3/fig/ldpc/update_rules/update_rules.tex \
              main/chapter3/fig/ldpc/update_rules/settings/colors.tex \
              main/chapter3/fig/ldpc/update_rules/dat/WiMAX_2304_1152_hlayered_MS_40_ite.txt \
              main/chapter3/fig/ldpc/update_rules/dat/WiMAX_2304_1152_hlayered_NMS_40_ite.txt \
              main/chapter3/fig/ldpc/update_rules/dat/WiMAX_2304_1152_hlayered_OMS_40_ite.txt \
              main/chapter3/fig/ldpc/update_rules/dat/WiMAX_2304_1152_hlayered_SPA_40_ite.txt \
              main/chapter3/fig/polar/scl_adaptive/scl_adaptive.tex \
              main/chapter3/fig/polar/scl_adaptive/settings/colors.tex \
              main/chapter3/fig/polar/scl_adaptive/dat/polar_2048_1723_1.0_4.5_FASCL8_CRC32_SPC4_i5-6600K.txt \
              main/chapter3/fig/polar/scl_adaptive/dat/polar_2048_1723_1.0_4.5_FASCL32_CRC32_SPC4_i5-6600K.txt \
              main/chapter3/fig/polar/scl_adaptive/dat/polar_2048_1723_1.0_4.5_PASCL8_CRC32_SPC4_i5-6600K.txt \
              main/chapter3/fig/polar/scl_adaptive/dat/polar_2048_1723_1.0_4.5_PASCL32_CRC32_SPC4_i5-6600K.txt \
              main/chapter3/fig/turbo/quantization/dat/data_6144.txt \
              main/chapter3/fig/turbo/quantization/quantization.tex \
              main/chapter3/fig/turbo/quantization/dat/data_6144_32b_float.txt \
              main/chapter3/fig/turbo/quantization/dat/data_6144_16b_fixed_Q6_3.txt \
              main/chapter3/fig/turbo/quantization/dat/data_6144_8b_fixed_Q6_2.txt \
              main/chapter3/fig/scma/fec/fec_1_2.tex \
              main/chapter3/fig/scma/fec/settings/colors.tex \
              main/chapter3/fig/scma/fec/dat/1_2/ldpc_empa.txt \
              main/chapter3/fig/scma/fec/dat/1_2/ldpc_mpa.txt \
              main/chapter3/fig/scma/fec/dat/1_2/polar_empa.txt \
              main/chapter3/fig/scma/fec/dat/1_2/polar_mpa.txt \
              main/chapter3/fig/scma/fec/dat/1_2/turbo_empa.txt \
              main/chapter3/fig/scma/fec/dat/1_2/turbo_mpa.txt \
              main/chapter3/fig/ci_cd/pipeline/pipeline.tex \
              main/chapter3/fig/ci_cd/pipeline/settings/colors.tex
	cd main/chapter3/fig/use_cases/library_task_module/    && rubber -d library_task_module.tex
	cd main/chapter3/fig/ldpc/scheduling/                  && rubber -d scheduling.tex
	cd main/chapter3/fig/ldpc/update_rules/                && rubber -d update_rules.tex
	cd main/chapter3/fig/polar/scl_adaptive/               && rubber -d scl_adaptive.tex
	cd main/chapter3/fig/turbo/quantization/               && rubber -d quantization.tex
	cd main/chapter3/fig/scma/fec/                         && rubber -d fec_1_2.tex
	cd main/chapter3/fig/ci_cd/pipeline/                   && rubber -d pipeline.tex

chapter4_fig: main/chapter4/fig/polar/sc_energy_implems_vs/sc_energy_implems_vs_total.tex \
              main/chapter4/fig/polar/sc_energy_implems_vs/sc_energy_implems_vs_mem.tex \
              main/chapter4/fig/polar/sc_energy_implems_vs/dat/A15_1100MHz_R05_intra_dyn.dat \
              main/chapter4/fig/polar/sc_energy_implems_vs/dat/A15_1100MHz_R05_intra_gen.dat \
              main/chapter4/fig/polar/sc_energy_implems_vs/dat/A15_1100MHz_R05_inter_dyn.dat \
              main/chapter4/fig/polar/sc_energy_implems_vs/dat/A15_1100MHz_R05_inter_gen.dat \
              main/chapter4/fig/polar/sc_energy_freq/dat/A7_250MHz_550MHz_R05_N4096_intra_inter_bis.dat \
              main/chapter4/fig/polar/sc_energy_freq/dat/A15_800MHz_1400MHz_R05_N4096_intra_inter_bis.dat \
              main/chapter4/fig/polar/sc_energy_freq/sc_energy_freq_a7.tex \
              main/chapter4/fig/polar/sc_energy_freq/dat/A7_250MHz_550MHz_R05_N4096_intra_bis.dat \
              main/chapter4/fig/polar/sc_energy_freq/dat/A7_250MHz_550MHz_R05_N4096_inter_bis.dat \
              main/chapter4/fig/polar/sc_energy_freq/sc_energy_freq_a15.tex \
              main/chapter4/fig/polar/sc_energy_freq/dat/A15_800MHz_1400MHz_R05_N4096_intra_bis.dat \
              main/chapter4/fig/polar/sc_energy_freq/dat/A15_800MHz_1400MHz_R05_N4096_inter_bis.dat \
              main/chapter4/fig/polar/sc_energy_rate/sc_energy_rate_N2048.tex \
              main/chapter4/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25_A7_inter_dyn.dat \
              main/chapter4/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25_A7_intra_dyn.dat \
              main/chapter4/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25_A53_inter_dyn.dat \
              main/chapter4/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25_A53_intra_dyn.dat \
              main/chapter4/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25_A57_inter_dyn.dat \
              main/chapter4/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25_A57_intra_dyn.dat \
              main/chapter4/fig/polar/sc_energy_rate/sc_energy_rate_N32768.tex \
              main/chapter4/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25_A7_inter_dyn.dat \
              main/chapter4/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25_A7_intra_dyn.dat \
              main/chapter4/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25_A53_inter_dyn.dat \
              main/chapter4/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25_A53_intra_dyn.dat \
              main/chapter4/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25_A57_inter_dyn.dat \
              main/chapter4/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25_A57_intra_dyn.dat \
              main/chapter4/fig/polar/sc_gen_thr_intra/sc_gen_thr_intra_arm.tex \
              main/chapter4/fig/polar/sc_gen_thr_intra/dat/A15_samples_intra_32b_aff3ct_r5_6.dat \
              main/chapter4/fig/polar/sc_gen_thr_intra/dat/A15_samples_intra_32b_aff3ct_r1_2.dat \
              main/chapter4/fig/polar/sc_gen_thr_intra/sc_gen_thr_intra_x86.tex \
              main/chapter4/fig/polar/sc_gen_thr_intra/dat/E31225_samples_intra_32b_aff3ct_r5_6.dat \
              main/chapter4/fig/polar/sc_gen_thr_intra/dat/E31225_samples_intra_32b_aff3ct_r1_2.dat \
              main/chapter4/fig/polar/sc_gen_thr_intra/dat/E31225_samples_intra_32b_sarkis_r5_6.dat \
              main/chapter4/fig/polar/sc_gen_thr_intra/dat/E31225_samples_intra_32b_sarkis_r1_2.dat \
              main/chapter4/fig/polar/sc_gen_thr_inter/sc_gen_thr_inter_arm.tex \
              main/chapter4/fig/polar/sc_gen_thr_inter/dat/A15_samples_inter_8b_aff3ct_r5_6.dat \
              main/chapter4/fig/polar/sc_gen_thr_inter/dat/A15_samples_inter_8b_aff3ct_r1_2.dat \
              main/chapter4/fig/polar/sc_gen_thr_inter/dat/A15_samples_inter_8b_handw_r5_6.dat \
              main/chapter4/fig/polar/sc_gen_thr_inter/dat/A15_samples_inter_8b_handw_r1_2.dat \
              main/chapter4/fig/polar/sc_gen_thr_inter/sc_gen_thr_inter_x86.tex \
              main/chapter4/fig/polar/sc_gen_thr_inter/dat/E31225_samples_inter_8b_aff3ct_r5_6.dat \
              main/chapter4/fig/polar/sc_gen_thr_inter/dat/E31225_samples_inter_8b_aff3ct_r1_2.dat \
              main/chapter4/fig/polar/sc_gen_thr_inter/dat/E31225_samples_inter_8b_handw_r5_6.dat \
              main/chapter4/fig/polar/sc_gen_thr_inter/dat/E31225_samples_inter_8b_handw_r1_2.dat \
              main/chapter4/fig/polar/sc_gen_l1i_size/sc_gen_l1i_size_w_comp.tex \
              main/chapter4/fig/polar/sc_gen_l1i_size/sc_gen_l1i_size_wo_comp.tex \
              main/chapter4/fig/polar/sc_gen_l1i_size/dat/samples_generated_decoders_sizes.dat \
              main/chapter4/fig/polar/sc_gen_l1i_size/dat/samples_generated_decoders_sizes_after_compression.dat \
              main/chapter4/fig/polar/sc_colgate/sc_colgate.tex \
              main/chapter4/fig/polar/sc_colgate/settings/colors.tex \
              main/chapter4/fig/turbo/thr/thr.tex \
              main/chapter4/fig/turbo/thr/dat/data_E5_01c_AVX.txt \
              main/chapter4/fig/turbo/thr/dat/data_E5_01c_SSE.txt \
              main/chapter4/fig/turbo/thr/dat/data_E5_04c_AVX.txt \
              main/chapter4/fig/turbo/thr/dat/data_E5_04c_SSE.txt \
              main/chapter4/fig/turbo/thr/dat/data_E5_12c_AVX.txt \
              main/chapter4/fig/turbo/thr/dat/data_E5_12c_SSE.txt \
              main/chapter4/fig/turbo/thr/dat/data_E5_24c_AVX.txt \
              main/chapter4/fig/turbo/thr/dat/data_E5_24c_SSE.txt \
              main/chapter4/fig/turbo/thr/dat/data_i7_01c_AVX.txt \
              main/chapter4/fig/turbo/thr/dat/data_i7_01c_SSE.txt \
              main/chapter4/fig/turbo/thr/dat/data_i7_04c_AVX.txt \
              main/chapter4/fig/turbo/thr/dat/data_i7_04c_SSE.txt \
              main/chapter4/fig/turbo/energy/energy.tex \
              main/chapter4/fig/turbo/energy/dat/data_K1024_AVX.txt \
              main/chapter4/fig/turbo/energy/dat/data_K1024_SSE.txt \
              main/chapter4/fig/turbo/energy/dat/data_K6144_AVX.txt \
              main/chapter4/fig/turbo/energy/dat/data_K6144_SSE.txt \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/WiMAX_thr.tex \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/WiMAX_lat.tex \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/settings/colors.tex \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/dat/LEGACY_N2304_K1152_epyc_7452_AVX.txt \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/dat/LEGACY_N2304_K1152_epyc_7452_SSE.txt \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/dat/LEGACY_N2304_K1152_xeon_platinum_8168_AVX-512.txt \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/dat/LEGACY_N2304_K1152_xeon_platinum_8168_AVX.txt \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/dat/LEGACY_N2304_K1152_xeon_platinum_8168_SSE.txt \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/dat/N2304_K1152_epyc_7452_AVX.txt \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/dat/N2304_K1152_epyc_7452_SSE.txt \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/dat/N2304_K1152_xeon_platinum_8168_AVX-512.txt \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/dat/N2304_K1152_xeon_platinum_8168_AVX.txt \
              main/chapter4/fig/ldpc/WiMAX_thr_lat/dat/N2304_K1152_xeon_platinum_8168_SSE.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/DVB-S2_thr.tex \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/DVB-S2_lat.tex \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/settings/colors.tex \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/LEGACY_N16200_K14400_epyc_7452_AVX.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/LEGACY_N16200_K14400_epyc_7452_SSE.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/LEGACY_N16200_K14400_xeon_platinum_8168_AVX-512.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/LEGACY_N16200_K14400_xeon_platinum_8168_AVX.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/LEGACY_N16200_K14400_xeon_platinum_8168_SSE.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/LEGACY_N64800_K32400_epyc_7452_AVX.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/LEGACY_N64800_K32400_epyc_7452_SSE.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/LEGACY_N64800_K32400_xeon_platinum_8168_AVX-512.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/LEGACY_N64800_K32400_xeon_platinum_8168_AVX.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/LEGACY_N64800_K32400_xeon_platinum_8168_SSE.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/N16200_K14400_epyc_7452_AVX.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/N16200_K14400_epyc_7452_SSE.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/N16200_K14400_xeon_platinum_8168_AVX-512.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/N16200_K14400_xeon_platinum_8168_AVX.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/N16200_K14400_xeon_platinum_8168_SSE.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/N64800_K32400_epyc_7452_AVX.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/N64800_K32400_epyc_7452_SSE.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/N64800_K32400_xeon_platinum_8168_AVX-512.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/N64800_K32400_xeon_platinum_8168_AVX.txt \
              main/chapter4/fig/ldpc/DVB-S2_thr_lat/dat/N64800_K32400_xeon_platinum_8168_SSE.txt \
              main/chapter4/fig/simu/speedup/speedup.tex \
              main/chapter4/fig/simu/speedup/settings/colors.tex \
              main/chapter4/fig/simu/speedup/dat/AMD_Ryzen_7_2700X.txt \
              main/chapter4/fig/simu/speedup/dat/Cavium_ThunderX2_CN9975.txt \
              main/chapter4/fig/simu/speedup/dat/Intel_Xeon_E5-2680v3.txt \
              main/chapter4/fig/simu/speedup/dat/Intel_Xeon_Gold_6140.txt \
              main/chapter4/fig/simu/speedup/dat/Intel_Xeon_Gold_6142.txt \
              main/chapter4/fig/simu/speedup/dat/Intel_Xeon_Phi_7230.txt \
              main/chapter4/fig/simu/throughput/throughput.tex \
              main/chapter4/fig/simu/throughput/settings/colors.tex \
              main/chapter4/fig/simu/chain/chain.tex \
              main/chapter4/fig/simu/chain/settings/colors.tex
	cd main/chapter4/fig/polar/sc_energy_implems_vs/       && rubber -d sc_energy_implems_vs_total.tex
	cd main/chapter4/fig/polar/sc_energy_implems_vs/       && rubber -d sc_energy_implems_vs_mem.tex
	cd main/chapter4/fig/polar/sc_energy_freq/             && rubber -d sc_energy_freq_a7.tex
	cd main/chapter4/fig/polar/sc_energy_freq/             && rubber -d sc_energy_freq_a15.tex
	cd main/chapter4/fig/polar/sc_energy_rate/             && rubber -d sc_energy_rate_N2048.tex
	cd main/chapter4/fig/polar/sc_energy_rate/             && rubber -d sc_energy_rate_N32768.tex
	cd main/chapter4/fig/polar/sc_gen_thr_intra/           && rubber -d sc_gen_thr_intra_arm.tex
	cd main/chapter4/fig/polar/sc_gen_thr_intra/           && rubber -d sc_gen_thr_intra_x86.tex
	cd main/chapter4/fig/polar/sc_gen_thr_inter/           && rubber -d sc_gen_thr_inter_arm.tex
	cd main/chapter4/fig/polar/sc_gen_thr_inter/           && rubber -d sc_gen_thr_inter_x86.tex
	cd main/chapter4/fig/polar/sc_gen_l1i_size/            && rubber -d sc_gen_l1i_size_w_comp.tex
	cd main/chapter4/fig/polar/sc_gen_l1i_size/            && rubber -d sc_gen_l1i_size_wo_comp.tex
	cd main/chapter4/fig/polar/sc_colgate/                 && rubber -d sc_colgate.tex
	cd main/chapter4/fig/turbo/thr/                        && rubber -d thr.tex
	cd main/chapter4/fig/turbo/energy/                     && rubber -d energy.tex
	cd main/chapter4/fig/ldpc/WiMAX_thr_lat/               && rubber -d WiMAX_thr.tex
	cd main/chapter4/fig/ldpc/WiMAX_thr_lat/               && rubber -d WiMAX_lat.tex
	cd main/chapter4/fig/ldpc/DVB-S2_thr_lat/              && rubber -d DVB-S2_thr.tex
	cd main/chapter4/fig/ldpc/DVB-S2_thr_lat/              && rubber -d DVB-S2_lat.tex
	cd main/chapter4/fig/simu/speedup                      && rubber -d speedup.tex
	cd main/chapter4/fig/simu/throughput                   && rubber -d throughput.tex
	cd main/chapter4/fig/simu/chain                        && rubber -d chain.tex

chapter5_fig: main/chapter5/src/pipeline/pipeline.cpp \
              main/chapter5/fig/dsl/loop/loop.tex \
              main/chapter5/fig/dsl/loop/settings/colors.tex \
              main/chapter5/fig/dsl/nested_loops/nested_loops.tex \
              main/chapter5/fig/dsl/nested_loops/settings/colors.tex \
              main/chapter5/fig/dsl/sequence/sequence_chain.tex \
              main/chapter5/fig/dsl/sequence/sequence_generic.tex \
              main/chapter5/fig/dsl/sequence/settings/colors.tex \
              main/chapter5/fig/dsl/sequence_dup/sequence_dup.tex \
              main/chapter5/fig/dsl/sequence_dup/settings/colors.tex \
              main/chapter5/fig/dsl/pipeline/pipeline_usr.tex \
              main/chapter5/fig/dsl/pipeline/pipeline_adp.tex \
              main/chapter5/fig/dsl/pipeline/settings/colors.tex \
              main/chapter5/fig/dvbs2/transmitter/transmitter.tex \
              main/chapter5/fig/dvbs2/transmitter/settings/colors.tex \
              main/chapter5/fig/dvbs2/receiver/receiver_transmission.tex \
              main/chapter5/fig/dvbs2/receiver/receiver_learning.tex \
              main/chapter5/fig/dvbs2/receiver/settings/colors.tex \
              main/chapter5/fig/dvbs2/pipeline_copy/pipeline_copy_dat.tex \
              main/chapter5/fig/dvbs2/pipeline_copy/pipeline_copy_ptr.tex \
              main/chapter5/fig/dvbs2/pipeline_copy/settings/colors.tex \
              main/chapter5/fig/dvbs2/bfer/dat/data_8PSK_R_8_9_BB.txt \
              main/chapter5/fig/dvbs2/bfer/dat/data_8PSK_R_8_9_sim.txt \
              main/chapter5/fig/dvbs2/bfer/dat/data_8PSK_R_8_9_rad.txt \
              main/chapter5/fig/dvbs2/bfer/dat/data_QPSK_R_8_9_BB.txt \
              main/chapter5/fig/dvbs2/bfer/dat/data_QPSK_R_8_9_sim.txt \
              main/chapter5/fig/dvbs2/bfer/dat/data_QPSK_R_8_9_rad.txt \
              main/chapter5/fig/dvbs2/bfer/dat/data_QPSK_R_3_5_BB.txt \
              main/chapter5/fig/dvbs2/bfer/dat/data_QPSK_R_3_5_sim.txt \
              main/chapter5/fig/dvbs2/bfer/dat/data_QPSK_R_3_5_rad.txt \
              main/chapter5/fig/dvbs2/bfer/bfer.tex \
              main/chapter5/fig/dvbs2/bfer/settings/colors.tex
	cd main/chapter5/fig/dsl/loop/                         && rubber -d loop.tex
	cd main/chapter5/fig/dsl/nested_loops/                 && rubber -d nested_loops.tex
	cd main/chapter5/fig/dsl/sequence/                     && rubber -d sequence_chain.tex
	cd main/chapter5/fig/dsl/sequence/                     && rubber -d sequence_generic.tex
	cd main/chapter5/fig/dsl/sequence_dup/                 && rubber -d sequence_dup.tex
	cd main/chapter5/fig/dsl/pipeline/                     && rubber -d pipeline_usr.tex
	cd main/chapter5/fig/dsl/pipeline/                     && rubber -d pipeline_adp.tex
	cd main/chapter5/fig/dvbs2/transmitter/                && rubber -d transmitter.tex
	cd main/chapter5/fig/dvbs2/receiver/                   && rubber -d receiver_transmission.tex
	cd main/chapter5/fig/dvbs2/receiver/                   && rubber -d receiver_learning.tex
	cd main/chapter5/fig/dvbs2/pipeline_copy/              && rubber -d pipeline_copy_dat.tex
	cd main/chapter5/fig/dvbs2/pipeline_copy/              && rubber -d pipeline_copy_ptr.tex
	cd main/chapter5/fig/dvbs2/bfer/                       && rubber -d bfer.tex

clean4all:
	rm -f *.mtc*
	rm -f *.bcf
	rm -f *.sta
	rm -f *.auxlock
	rm -f *.lol
	rm -f *.pyg
	rm -f *.run.xml
	rm -rf _minted*
	rm -rf build

clean: clean4all
	cd ./                                                  && rubber --clean my_thesis
	cd head                                                && rubber --clean titlepage
	cd tail                                                && rubber --clean backcover
	cd main/chapter1/fig/intro/com_chain                   && rubber --clean com_chain
	cd main/chapter1/fig/simu/com_chain                    && rubber --clean com_chain
	cd main/chapter1/fig/simu/in_out                       && rubber --clean in_out
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_bch_rs
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_ldpc
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_polar
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_rsc
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_tpc
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean bfer_turbo
	cd main/chapter1/fig/sdr/base_station/                 && rubber --clean base_station_1G_2G
	cd main/chapter1/fig/sdr/base_station/                 && rubber --clean base_station_3G_4G
	cd main/chapter1/fig/sdr/base_station/                 && rubber --clean base_station_5G_future
	cd main/chapter1/fig/ldpc/bp_cn_update/                && rubber --clean bp_cn_update
	cd main/chapter1/fig/ldpc/bp_vn_update/                && rubber --clean bp_vn_update
	cd main/chapter1/fig/polar/sc_decoder/                 && rubber --clean sc_decoder
	cd main/chapter1/fig/polar/tree_pruning_example/       && rubber --clean tree_pruning_example
	cd main/chapter1/fig/scma/codec/                       && rubber --clean codec_chain
	cd main/chapter1/fig/scma/codec/                       && rubber --clean codec_dec
	cd main/chapter1/fig/scma/codec/                       && rubber --clean codec_enc
	cd main/chapter1/fig/scma/codec/                       && rubber --clean codec_graph
	cd main/chapter1/fig/ldpc/parity_checks                && rubber --clean parity_checks
	cd main/chapter1/fig/ldpc/parity_check                 && rubber --clean parity_check
	cd main/chapter1/fig/polar/encoder                     && rubber --clean encoder
	cd main/chapter1/fig/polar/encoder_sys                 && rubber --clean encoder_sys
	cd main/chapter1/fig/polar/tree                        && rubber --clean tree
	cd main/chapter1/fig/turbo/sub_encoder                 && rubber --clean sub_encoder
	cd main/chapter1/fig/turbo/mealy                       && rubber --clean mealy
	cd main/chapter1/fig/turbo/trellis                     && rubber --clean trellis
	cd main/chapter1/fig/turbo/encoder                     && rubber --clean encoder
	cd main/chapter1/fig/turbo/decoder                     && rubber --clean decoder
	cd main/chapter1/fig/turbo/encoder_lte                 && rubber --clean encoder_lte
	cd main/chapter2/fig/vectorization/mandelbrot_speedup/ && rubber --clean mandelbrot_speedup_32bit
	cd main/chapter2/fig/vectorization/mandelbrot_speedup/ && rubber --clean mandelbrot_speedup_64bit
	cd main/chapter2/fig/vectorization/inter_frame/        && rubber --clean inter_frame
	cd main/chapter2/fig/vectorization/reordering/         && rubber --clean reordering
	cd main/chapter2/fig/polar/sc_tree_cut/                && rubber --clean sc_tree_cut_inter
	cd main/chapter2/fig/polar/sc_tree_cut/                && rubber --clean sc_tree_cut_intra
	cd main/chapter2/fig/polar/scl_tree_cut/               && rubber --clean scl_tree_cut
	cd main/chapter2/fig/polar/scl_spc/                    && rubber --clean scl_spc_diff
	cd main/chapter2/fig/polar/patterns/                   && rubber --clean patterns
	cd main/chapter2/fig/polar/sc_gen_compression/         && rubber --clean sc_gen_compression
	cd main/chapter2/fig/polar/sc_gen_compression/         && rubber --clean sc_gen_no_compression
	cd main/chapter2/fig/polar/sc_gen_compression/         && rubber --clean sc_gen_compression_legend
	cd main/chapter2/fig/polar/scl_cpy_vs_ptr/             && rubber --clean scl_cpy_vs_ptr
	cd main/chapter2/fig/scma/simd_norm/                   && rubber --clean simd_norm_aos_mipp
	cd main/chapter2/fig/scma/simd_norm/                   && rubber --clean simd_norm_soa_mipp
	cd main/chapter2/fig/scma/simd_exp/                    && rubber --clean simd_exp_mipp
	cd main/chapter2/fig/scma/simd_final_beliefs/          && rubber --clean simd_final_beliefs_mipp
	cd main/chapter3/fig/use_cases/library_task_module/    && rubber --clean library_task_module
	cd main/chapter3/fig/ldpc/scheduling/                  && rubber --clean scheduling
	cd main/chapter3/fig/ldpc/update_rules/                && rubber --clean update_rules
	cd main/chapter3/fig/polar/scl_adaptive/               && rubber --clean scl_adaptive
	cd main/chapter3/fig/turbo/quantization/               && rubber --clean quantization
	cd main/chapter3/fig/scma/fec/                         && rubber --clean fec_1_2
	cd main/chapter3/fig/ci_cd/pipeline/                   && rubber --clean pipeline
	cd main/chapter4/fig/polar/sc_gen_l1i_size/            && rubber --clean sc_gen_l1i_size_w_comp
	cd main/chapter4/fig/polar/sc_gen_l1i_size/            && rubber --clean sc_gen_l1i_size_wo_comp
	cd main/chapter4/fig/polar/sc_gen_thr_inter/           && rubber --clean sc_gen_thr_inter_arm
	cd main/chapter4/fig/polar/sc_gen_thr_inter/           && rubber --clean sc_gen_thr_inter_x86
	cd main/chapter4/fig/polar/sc_gen_thr_intra/           && rubber --clean sc_gen_thr_intra_arm
	cd main/chapter4/fig/polar/sc_gen_thr_intra/           && rubber --clean sc_gen_thr_intra_x86
	cd main/chapter4/fig/polar/sc_energy_freq/             && rubber --clean sc_energy_freq_a7
	cd main/chapter4/fig/polar/sc_energy_freq/             && rubber --clean sc_energy_freq_a15
	cd main/chapter4/fig/polar/sc_energy_implems_vs/       && rubber --clean sc_energy_implems_vs_total
	cd main/chapter4/fig/polar/sc_energy_implems_vs/       && rubber --clean sc_energy_implems_vs_mem
	cd main/chapter4/fig/polar/sc_energy_rate/             && rubber --clean sc_energy_rate_N2048
	cd main/chapter4/fig/polar/sc_energy_rate/             && rubber --clean sc_energy_rate_N32768
	cd main/chapter4/fig/polar/sc_colgate/                 && rubber --clean sc_colgate
	cd main/chapter4/fig/turbo/thr/                        && rubber --clean thr
	cd main/chapter4/fig/turbo/energy/                     && rubber --clean energy
	cd main/chapter4/fig/ldpc/WiMAX_thr_lat/               && rubber --clean WiMAX_thr
	cd main/chapter4/fig/ldpc/WiMAX_thr_lat/               && rubber --clean WiMAX_lat
	cd main/chapter4/fig/ldpc/DVB-S2_thr_lat/              && rubber --clean DVB-S2_thr
	cd main/chapter4/fig/ldpc/DVB-S2_thr_lat/              && rubber --clean DVB-S2_lat
	cd main/chapter4/fig/simu/speedup                      && rubber --clean speedup
	cd main/chapter4/fig/simu/throughput                   && rubber --clean throughput
	cd main/chapter4/fig/simu/chain                        && rubber --clean chain
	cd main/chapter5/fig/dsl/loop/                         && rubber --clean loop
	cd main/chapter5/fig/dsl/nested_loops/                 && rubber --clean nested_loops
	cd main/chapter5/fig/dsl/sequence/                     && rubber --clean sequence_chain
	cd main/chapter5/fig/dsl/sequence/                     && rubber --clean sequence_generic
	cd main/chapter5/fig/dsl/sequence_dup/                 && rubber --clean sequence_dup
	cd main/chapter5/fig/dsl/pipeline/                     && rubber --clean pipeline_usr
	cd main/chapter5/fig/dsl/pipeline/                     && rubber --clean pipeline_adp
	cd main/chapter5/fig/dvbs2/transmitter/                && rubber --clean transmitter
	cd main/chapter5/fig/dvbs2/receiver/                   && rubber --clean receiver_transmission
	cd main/chapter5/fig/dvbs2/receiver/                   && rubber --clean receiver_learning
	cd main/chapter5/fig/dvbs2/pipeline_copy/              && rubber --clean pipeline_copy_dat
	cd main/chapter5/fig/dvbs2/pipeline_copy/              && rubber --clean pipeline_copy_ptr
	cd main/chapter5/fig/dvbs2/bfer/                       && rubber --clean bfer

mrproper: clean4all
	cd ./                                                  && rubber --clean -d my_thesis.tex
	cd head                                                && rubber --clean -d titlepage.tex
	cd tail                                                && rubber --clean -d backcover.tex
	cd main/chapter1/fig/intro/com_chain                   && rubber --clean -d com_chain.tex
	cd main/chapter1/fig/simu/com_chain                    && rubber --clean -d com_chain.tex
	cd main/chapter1/fig/simu/in_out                       && rubber --clean -d in_out.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_bch_rs.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_ldpc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_polar.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_rsc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_tpc.tex
	cd main/chapter1/fig/simu/bfer/                        && rubber --clean -d bfer_turbo.tex
	cd main/chapter1/fig/sdr/base_station/                 && rubber --clean -d base_station_1G_2G.tex
	cd main/chapter1/fig/sdr/base_station/                 && rubber --clean -d base_station_3G_4G.tex
	cd main/chapter1/fig/sdr/base_station/                 && rubber --clean -d base_station_5G_future.tex
	cd main/chapter1/fig/ldpc/bp_cn_update/                && rubber --clean -d bp_cn_update.tex
	cd main/chapter1/fig/ldpc/bp_vn_update/                && rubber --clean -d bp_vn_update.tex
	cd main/chapter1/fig/polar/sc_decoder/                 && rubber --clean -d sc_decoder.tex
	cd main/chapter1/fig/polar/tree_pruning_example/       && rubber --clean -d tree_pruning_example.tex
	cd main/chapter1/fig/scma/codec/                       && rubber --clean -d codec_chain.tex
	cd main/chapter1/fig/scma/codec/                       && rubber --clean -d codec_dec.tex
	cd main/chapter1/fig/scma/codec/                       && rubber --clean -d codec_enc.tex
	cd main/chapter1/fig/scma/codec/                       && rubber --clean -d codec_graph.tex
	cd main/chapter1/fig/ldpc/parity_checks                && rubber --clean -d parity_checks.tex
	cd main/chapter1/fig/ldpc/parity_check                 && rubber --clean -d parity_check.tex
	cd main/chapter1/fig/polar/encoder                     && rubber --clean -d encoder.tex
	cd main/chapter1/fig/polar/encoder_sys                 && rubber --clean -d encoder_sys.tex
	cd main/chapter1/fig/polar/tree                        && rubber --clean -d tree.tex
	cd main/chapter1/fig/turbo/sub_encoder                 && rubber --clean -d sub_encoder.tex
	cd main/chapter1/fig/turbo/mealy                       && rubber --clean -d mealy.tex
	cd main/chapter1/fig/turbo/trellis                     && rubber --clean -d trellis.tex
	cd main/chapter1/fig/turbo/encoder                     && rubber --clean -d encoder.tex
	cd main/chapter1/fig/turbo/decoder                     && rubber --clean -d decoder.tex
	cd main/chapter1/fig/turbo/encoder_lte                 && rubber --clean -d encoder_lte.tex
	cd main/chapter2/fig/vectorization/mandelbrot_speedup/ && rubber --clean -d mandelbrot_speedup_32bit.tex
	cd main/chapter2/fig/vectorization/mandelbrot_speedup/ && rubber --clean -d mandelbrot_speedup_64bit.tex
	cd main/chapter2/fig/vectorization/inter_frame/        && rubber --clean -d inter_frame.tex
	cd main/chapter2/fig/vectorization/reordering/         && rubber --clean -d reordering.tex
	cd main/chapter2/fig/polar/sc_tree_cut/                && rubber --clean -d sc_tree_cut_inter.tex
	cd main/chapter2/fig/polar/sc_tree_cut/                && rubber --clean -d sc_tree_cut_intra.tex
	cd main/chapter2/fig/polar/scl_tree_cut/               && rubber --clean -d scl_tree_cut.tex
	cd main/chapter2/fig/polar/scl_spc/                    && rubber --clean -d scl_spc_diff.tex
	cd main/chapter2/fig/polar/patterns/                   && rubber --clean -d patterns.tex
	cd main/chapter2/fig/polar/sc_gen_compression/         && rubber --clean -d sc_gen_compression.tex
	cd main/chapter2/fig/polar/sc_gen_compression/         && rubber --clean -d sc_gen_no_compression.tex
	cd main/chapter2/fig/polar/sc_gen_compression/         && rubber --clean -d sc_gen_compression_legend.tex
	cd main/chapter2/fig/polar/scl_cpy_vs_ptr/             && rubber --clean -d scl_cpy_vs_ptr.tex
	cd main/chapter2/fig/scma/simd_norm/                   && rubber --clean -d simd_norm_aos_mipp.tex
	cd main/chapter2/fig/scma/simd_norm/                   && rubber --clean -d simd_norm_soa_mipp.tex
	cd main/chapter2/fig/scma/simd_exp/                    && rubber --clean -d simd_exp_mipp.tex
	cd main/chapter2/fig/scma/simd_final_beliefs/          && rubber --clean -d simd_final_beliefs_mipp.tex
	cd main/chapter3/fig/use_cases/library_task_module/    && rubber --clean -d library_task_module.tex
	cd main/chapter3/fig/ldpc/scheduling/                  && rubber --clean -d scheduling.tex
	cd main/chapter3/fig/ldpc/update_rules/                && rubber --clean -d update_rules.tex
	cd main/chapter3/fig/polar/scl_adaptive/               && rubber --clean -d scl_adaptive.tex
	cd main/chapter3/fig/turbo/quantization/               && rubber --clean -d quantization.tex
	cd main/chapter3/fig/scma/fec/                         && rubber --clean -d fec_1_2.tex
	cd main/chapter3/fig/ci_cd/pipeline/                   && rubber --clean -d pipeline.tex
	cd main/chapter4/fig/polar/sc_energy_implems_vs/       && rubber --clean -d sc_energy_implems_vs_total.tex
	cd main/chapter4/fig/polar/sc_energy_implems_vs/       && rubber --clean -d sc_energy_implems_vs_mem.tex
	cd main/chapter4/fig/polar/sc_energy_freq/             && rubber --clean -d sc_energy_freq_a7.tex
	cd main/chapter4/fig/polar/sc_energy_freq/             && rubber --clean -d sc_energy_freq_a15.tex
	cd main/chapter4/fig/polar/sc_energy_rate/             && rubber --clean -d sc_energy_rate_N2048.tex
	cd main/chapter4/fig/polar/sc_energy_rate/             && rubber --clean -d sc_energy_rate_N32768.tex
	cd main/chapter4/fig/polar/sc_gen_thr_intra/           && rubber --clean -d sc_gen_thr_intra_arm.tex
	cd main/chapter4/fig/polar/sc_gen_thr_intra/           && rubber --clean -d sc_gen_thr_intra_x86.tex
	cd main/chapter4/fig/polar/sc_gen_thr_inter/           && rubber --clean -d sc_gen_thr_inter_arm.tex
	cd main/chapter4/fig/polar/sc_gen_thr_inter/           && rubber --clean -d sc_gen_thr_inter_x86.tex
	cd main/chapter4/fig/polar/sc_gen_l1i_size/            && rubber --clean -d sc_gen_l1i_size_w_comp.tex
	cd main/chapter4/fig/polar/sc_gen_l1i_size/            && rubber --clean -d sc_gen_l1i_size_wo_comp.tex
	cd main/chapter4/fig/polar/sc_colgate/                 && rubber --clean -d sc_colgate.tex
	cd main/chapter4/fig/turbo/thr/                        && rubber --clean -d thr.tex
	cd main/chapter4/fig/turbo/energy/                     && rubber --clean -d energy.tex
	cd main/chapter4/fig/ldpc/WiMAX_thr_lat/               && rubber --clean -d WiMAX_thr.tex
	cd main/chapter4/fig/ldpc/WiMAX_thr_lat/               && rubber --clean -d WiMAX_lat.tex
	cd main/chapter4/fig/ldpc/DVB-S2_thr_lat/              && rubber --clean -d DVB-S2_thr.tex
	cd main/chapter4/fig/ldpc/DVB-S2_thr_lat/              && rubber --clean -d DVB-S2_lat.tex
	cd main/chapter4/fig/simu/speedup                      && rubber --clean -d speedup.tex
	cd main/chapter4/fig/simu/throughput                   && rubber --clean -d throughput.tex
	cd main/chapter4/fig/simu/chain                        && rubber --clean -d chain.tex
	cd main/chapter5/fig/dsl/loop/                         && rubber --clean -d loop.tex
	cd main/chapter5/fig/dsl/nested_loops/                 && rubber --clean -d nested_loops.tex
	cd main/chapter5/fig/dsl/sequence/                     && rubber --clean -d sequence_chain.tex
	cd main/chapter5/fig/dsl/sequence/                     && rubber --clean -d sequence_generic.tex
	cd main/chapter5/fig/dsl/sequence_dup/                 && rubber --clean -d sequence_dup.tex
	cd main/chapter5/fig/dsl/pipeline/                     && rubber --clean -d pipeline_usr.tex
	cd main/chapter5/fig/dsl/pipeline/                     && rubber --clean -d pipeline_adp.tex
	cd main/chapter5/fig/dvbs2/transmitter/                && rubber --clean -d transmitter.tex
	cd main/chapter5/fig/dvbs2/receiver/                   && rubber --clean -d receiver_transmission.tex
	cd main/chapter5/fig/dvbs2/receiver/                   && rubber --clean -d receiver_learning.tex
	cd main/chapter5/fig/dvbs2/pipeline_copy/              && rubber --clean -d pipeline_copy_dat.tex
	cd main/chapter5/fig/dvbs2/pipeline_copy/              && rubber --clean -d pipeline_copy_ptr.tex
	cd main/chapter5/fig/dvbs2/bfer/                       && rubber --clean -d bfer.tex
	rm tikz_cache/* -rf

open:
	xdg-open my_thesis.pdf &
