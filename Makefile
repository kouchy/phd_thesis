.phony: all clean mrproper

all: titlepage chapter2_fig
	rubber --unsafe -d my_thesis.tex

titlepage: head/titlepage.tex
	cd head && rubber -d titlepage.tex

chapter2_fig: main/chapter2/src/ldpc/bp_min_sum.cpp \
              main/chapter2/src/ldpc/bp_min_sum.cpp \
              main/chapter2/src/polar/f_seq.cpp \
              main/chapter2/src/polar/f_simd.cpp \
              main/chapter2/src/polar/f_g_h_simd.cpp \
              main/chapter2/src/polar/generated_sc_decoder.cpp \
              main/chapter2/src/vectorization/mipp_mli.cpp \
              main/chapter2/fig/vectorization/mandelbrot_speedup.gp \
              main/chapter2/fig/vectorization/dat/perf_mandelbrot_32bit.dat \
              main/chapter2/fig/vectorization/dat/perf_mandelbrot_64bit.dat \
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
              main/chapter2/fig/polar/scl_tree_cut/scl_tree_cut.tex \
              main/chapter2/fig/polar/scl_tree_cut/colors \
              main/chapter2/fig/polar/scl_tree_cut/dat/data_L32_i5-6600K.txt \
              main/chapter2/fig/polar/scl_spc/scl_spc.gp \
              main/chapter2/fig/polar/scl_spc/scl_spc_diff_old.gp \
              main/chapter2/fig/polar/scl_spc/scl_spc_diff.tex \
              main/chapter2/fig/polar/scl_spc/colors \
              main/chapter2/fig/polar/scl_spc/dat/data_snr_diff.txt \
              main/chapter2/fig/polar/scl_spc/dat/data_spc.txt \
              main/chapter2/fig/polar/scl_spc/dat/data_spc_diff.txt \
              main/chapter2/fig/polar/scl_bfer/scl_bfer.tex \
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
              main/chapter2/fig/polar/scl_cpy_vs_ptr/scl_cpy_vs_ptr.tex \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/colors \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_cpy_8.txt \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_cpy_16.txt \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_cpy_32.txt \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_ptr_8.txt \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_ptr_16.txt \
              main/chapter2/fig/polar/scl_cpy_vs_ptr/dat/data_i5-6600K_scl_ptr_32.txt \
              main/chapter2/fig/polar/sc_tree_cut/sc_tree_cut.gp \
              main/chapter2/fig/polar/sc_tree_cut/dat/E31225_samples_inter_8b_opti.dat \
              main/chapter2/fig/polar/sc_tree_cut/dat/E31225_samples_intra_32b_opti.dat \
              main/chapter2/fig/polar/sc_energy_implems_vs/sc_energy_implems_vs.gp \
              main/chapter2/fig/polar/sc_energy_implems_vs/dat/A15_1100MHz_R05_intra_inter_bis.dat \
              main/chapter2/fig/polar/sc_energy_freq/sc_energy_freq.gp \
              main/chapter2/fig/polar/sc_energy_freq/dat/A7_250MHz_550MHz_R05_N4096_intra_inter_bis.dat \
              main/chapter2/fig/polar/sc_energy_freq/dat/A15_800MHz_1400MHz_R05_N4096_intra_inter_bis.dat \
              main/chapter2/fig/polar/sc_energy_rate/sc_energy_rate.gp \
              main/chapter2/fig/polar/sc_energy_rate/dat/rate_N2048_SNR25.dat \
              main/chapter2/fig/polar/sc_energy_rate/dat/rate_N32768_SNR25.dat \
              main/chapter2/fig/polar/sc_gen_thr_intra/sc_gen_thr_intra.gp \
              main/chapter2/fig/polar/sc_gen_thr_intra/dat/A15_samples_intra_32b.dat \
              main/chapter2/fig/polar/sc_gen_thr_intra/dat/E31225_samples_intra_32b.dat \
              main/chapter2/fig/polar/sc_gen_thr_inter/sc_gen_thr_inter.gp \
              main/chapter2/fig/polar/sc_gen_thr_inter/dat/A15_samples_inter_8b.dat \
              main/chapter2/fig/polar/sc_gen_thr_inter/dat/E31225_samples_inter_8b.dat \
              main/chapter2/fig/polar/sc_gen_l1i_size/sc_gen_l1i_size.gp \
              main/chapter2/fig/polar/sc_gen_l1i_size/dat/samples_generated_decoders_sizes.dat \
              main/chapter2/fig/polar/sc_gen_l1i_size/dat/samples_generated_decoders_sizes_after_compression.dat \
              main/chapter2/fig/turbo/bfer/bfer.gp \
              main/chapter2/fig/turbo/bfer/dat/data_6144.txt \
              main/chapter2/fig/turbo/thr/thr.gp \
              main/chapter2/fig/turbo/thr/dat/data.txt \
              main/chapter2/fig/turbo/energy/energy.gp \
              main/chapter2/fig/turbo/energy/dat/data.txt \
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
              main/chapter2/fig/scma/energy/energy.tex \
              main/chapter2/fig/scma/energy/colors \
              main/chapter2/fig/scma/profiling/profiling.tex \
              main/chapter2/fig/scma/profiling/colors \
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
	cd main/chapter2/fig/vectorization/              && gnuplot   mandelbrot_speedup.gp
	cd main/chapter2/fig/polar/algos_comparison/     && rubber -d algos_comparison.tex
	cd main/chapter2/fig/polar/scl_l/                && rubber -d scl_l.tex
	cd main/chapter2/fig/polar/scl_tree_cut/         && rubber -d scl_tree_cut.tex
	cd main/chapter2/fig/polar/scl_spc/              && gnuplot   scl_spc.gp
	cd main/chapter2/fig/polar/scl_spc/              && gnuplot   scl_spc_diff_old.gp
	cd main/chapter2/fig/polar/scl_spc/              && rubber -d scl_spc_diff.tex
	cd main/chapter2/fig/polar/scl_bfer/             && rubber -d scl_bfer.tex
	cd main/chapter2/fig/polar/scl_adaptive/         && rubber -d scl_adaptive.tex
	cd main/chapter2/fig/polar/scl_cpy_vs_ptr/       && rubber -d scl_cpy_vs_ptr.tex
	cd main/chapter2/fig/polar/sc_tree_cut/          && gnuplot   sc_tree_cut.gp
	cd main/chapter2/fig/polar/sc_energy_implems_vs/ && gnuplot   sc_energy_implems_vs.gp
	cd main/chapter2/fig/polar/sc_energy_freq/       && gnuplot   sc_energy_freq.gp
	cd main/chapter2/fig/polar/sc_energy_rate/       && gnuplot   sc_energy_rate.gp
	cd main/chapter2/fig/polar/sc_gen_thr_intra/     && gnuplot   sc_gen_thr_intra.gp
	cd main/chapter2/fig/polar/sc_gen_thr_inter/     && gnuplot   sc_gen_thr_inter.gp
	cd main/chapter2/fig/polar/sc_gen_l1i_size/      && gnuplot   sc_gen_l1i_size.gp
	cd main/chapter2/fig/turbo/bfer/                 && gnuplot   bfer.gp
	cd main/chapter2/fig/turbo/thr/                  && gnuplot   thr.gp
	cd main/chapter2/fig/turbo/energy/               && gnuplot   energy.gp
	cd main/chapter2/fig/scma/ber_uncoded/           && rubber -d ber_uncoded.tex
	cd main/chapter2/fig/scma/ber_uncoded_iter/      && rubber -d ber_uncoded_iter.tex
	cd main/chapter2/fig/scma/energy/                && rubber -d energy.tex
	cd main/chapter2/fig/scma/profiling/             && rubber -d profiling.tex
	cd main/chapter2/fig/scma/fec/                   && rubber -d fec_1_2.tex
	cd main/chapter2/fig/scma/fec/                   && rubber -d fec_1_3.tex

clean4all:
	rm -f *.mtc*
	rm -f *.bcf
	rm -f *.lol
	rm -f *.run.xml
	rm -rf _minted*
	rm -rf build

clean: clean4all
	cd ./                                        && rubber --clean my_thesis
	cd head                                      && rubber --clean titlepage
	cd main/chapter2/fig/polar/algos_comparison/ && rubber --clean algos_comparison
	cd main/chapter2/fig/polar/scl_l/            && rubber --clean scl_l
	cd main/chapter2/fig/polar/scl_tree_cut/     && rubber --clean scl_tree_cut
	cd main/chapter2/fig/polar/scl_spc/          && rubber --clean scl_spc_diff
	cd main/chapter2/fig/polar/scl_bfer/         && rubber --clean scl_bfer
	cd main/chapter2/fig/polar/scl_adaptive/     && rubber --clean scl_adaptive
	cd main/chapter2/fig/polar/scl_cpy_vs_ptr/   && rubber --clean scl_cpy_vs_ptr
	cd main/chapter2/fig/scma/ber_uncoded/       && rubber --clean ber_uncoded
	cd main/chapter2/fig/scma/ber_uncoded_iter/  && rubber --clean ber_uncoded_iter
	cd main/chapter2/fig/scma/energy/            && rubber --clean energy
	cd main/chapter2/fig/scma/profiling/         && rubber --clean profiling
	cd main/chapter2/fig/scma/fec/               && rubber --clean fec_1_2
	cd main/chapter2/fig/scma/fec/               && rubber --clean fec_1_3

mrproper: clean4all
	cd ./                                            && rubber --clean -d my_thesis.tex
	cd head                                          && rubber --clean -d titlepage.tex
	cd main/chapter2/fig/vectorization/              && rm -f             mandelbrot_speedup.pdf
	cd main/chapter2/fig/polar/algos_comparison/     && rubber --clean -d algos_comparison.tex
	cd main/chapter2/fig/polar/scl_l/                && rubber --clean -d scl_l.tex
	cd main/chapter2/fig/polar/scl_tree_cut/         && rubber --clean -d scl_tree_cut.tex
	cd main/chapter2/fig/polar/scl_spc/              && rm -f             scl_spc.pdf
	cd main/chapter2/fig/polar/scl_spc/              && rm -f             scl_spc_diff_old.pdf
	cd main/chapter2/fig/polar/scl_spc/              && rubber --clean -d scl_spc_diff.tex
	cd main/chapter2/fig/polar/scl_bfer/             && rubber --clean -d scl_bfer.tex
	cd main/chapter2/fig/polar/scl_adaptive/         && rubber --clean -d scl_adaptive.tex
	cd main/chapter2/fig/polar/scl_cpy_vs_ptr/       && rubber --clean -d scl_cpy_vs_ptr.tex
	cd main/chapter2/fig/polar/sc_tree_cut/          && rm -f             sc_tree_cut.pdf
	cd main/chapter2/fig/polar/sc_energy_implems_vs/ && rm -f             sc_energy_implems_vs.pdf
	cd main/chapter2/fig/polar/sc_energy_freq/       && rm -f             sc_energy_freq.pdf
	cd main/chapter2/fig/polar/sc_energy_rate/       && rm -f             sc_energy_rate_N2048.pdf
	cd main/chapter2/fig/polar/sc_energy_rate/       && rm -f             sc_energy_rate_N32768.pdf
	cd main/chapter2/fig/polar/sc_gen_thr_intra/     && rm -f             sc_gen_thr_intra.pdf
	cd main/chapter2/fig/polar/sc_gen_thr_inter/     && rm -f             sc_gen_thr_inter.pdf
	cd main/chapter2/fig/polar/sc_gen_l1i_size/      && rm -f             sc_gen_l1i_size.pdf
	cd main/chapter2/fig/polar/sc_gen_l1i_size/      && rm -f             sc_gen_l1i_size_small.pdf
	cd main/chapter2/fig/turbo/bfer/                 && rm -f             bfer.pdf
	cd main/chapter2/fig/turbo/thr/                  && rm -f             thr.pdf
	cd main/chapter2/fig/turbo/energy/               && rm -f             energy.pdf
	cd main/chapter2/fig/scma/ber_uncoded/           && rubber --clean -d ber_uncoded.tex
	cd main/chapter2/fig/scma/ber_uncoded_iter/      && rubber --clean -d ber_uncoded_iter.tex
	cd main/chapter2/fig/scma/energy/                && rubber --clean -d energy.tex
	cd main/chapter2/fig/scma/profiling/             && rubber --clean -d profiling.tex
	cd main/chapter2/fig/scma/fec/                   && rubber --clean -d fec_1_2.tex
	cd main/chapter2/fig/scma/fec/                   && rubber --clean -d fec_1_3.tex

open:
	xdg-open my_thesis.pdf &