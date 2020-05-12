#!/bin/bash

N_MIN="128"
N_MAX="8192"
D="ASCL"
p="32"
fer="0.00001"
t="6"

# L="8"
# R="0.5"
# cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
# echo -e "\n\n\"$algo L=$L R=$R CRC_{32} p=$p\" --simu-stop-time 1800"
# echo -e "# $cmd_line -L $L"
# ./scl_snr_diff.py "$cmd_line -L $L" $N_MIN $N_MAX $R $fer

L="8"
R="0.33"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} p=$p\" --simu-stop-time 1800"
echo -e "# $cmd_line -L $L"
./scl_snr_diff.py "$cmd_line -L $L" $N_MIN $N_MAX $R $fer

L="8"
R="0.66"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} p=$p\" --simu-stop-time 1800"
echo -e "# $cmd_line -L $L"
./scl_snr_diff.py "$cmd_line -L $L" $N_MIN $N_MAX $R $fer

L="32"
R="0.5"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} p=$p\" --simu-stop-time 1800"
echo -e "# $cmd_line -L $L"
./scl_snr_diff.py "$cmd_line -L $L" $N_MIN $N_MAX $R $fer

L="32"
R="0.33"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} p=$p\" --simu-stop-time 1800"
echo -e "# $cmd_line -L $L"
./scl_snr_diff.py "$cmd_line -L $L" $N_MIN $N_MAX $R $fer

L="32"
R="0.66"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} p=$p\" --simu-stop-time 1800"
echo -e "# $cmd_line -L $L"
./scl_snr_diff.py "$cmd_line -L $L" $N_MIN $N_MAX $R $fer
