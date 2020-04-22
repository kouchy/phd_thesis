#!/bin/bash

N_MIN="128"
N_MAX="8192"
D="ASCL"
p="32"
fer="0.00001"
t="8"

L="8"
R="0.5"
SPC="SPC_4"
SPC_txt="SPC_{4}"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} $SPC_txt p=$p\""
echo -e "# $cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L"
./scl_snr.py "$cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L" $N_MIN $N_MAX $R $fer

L="8"
R="0.33"
SPC="SPC_4"
SPC_txt="SPC_{4}"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} $SPC_txt p=$p\""
echo -e "# $cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L"
./scl_snr.py "$cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L" $N_MIN $N_MAX $R $fer

L="8"
R="0.66"
SPC="SPC_4"
SPC_txt="SPC_{4}"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} $SPC_txt p=$p\""
echo -e "# $cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L"
./scl_snr.py "$cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L" $N_MIN $N_MAX $R $fer

L="8"
R="0.5"
SPC="SPC"
SPC_txt="SPC"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} $SPC_txt p=$p\""
echo -e "# $cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L"
./scl_snr.py "$cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L" $N_MIN $N_MAX $R $fer

L="8"
R="0.33"
SPC="SPC"
SPC_txt="SPC"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} $SPC_txt p=$p\""
echo -e "# $cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L"
./scl_snr.py "$cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L" $N_MIN $N_MAX $R $fer

L="8"
R="0.66"
SPC="SPC"
SPC_txt="SPC"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} $SPC_txt p=$p\""
echo -e "# $cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L"
./scl_snr.py "$cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L" $N_MIN $N_MAX $R $fer

L="32"
R="0.5"
SPC="SPC_4"
SPC_txt="SPC_{4}"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} $SPC_txt p=$p\""
echo -e "# $cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L"
./scl_snr.py "$cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L" $N_MIN $N_MAX $R $fer

L="32"
R="0.33"
SPC="SPC_4"
SPC_txt="SPC_{4}"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} $SPC_txt p=$p\""
echo -e "# $cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L"
./scl_snr.py "$cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L" $N_MIN $N_MAX $R $fer

L="32"
R="0.66"
SPC="SPC_4"
SPC_txt="SPC_{4}"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} $SPC_txt p=$p\""
echo -e "# $cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L"
./scl_snr.py "$cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L" $N_MIN $N_MAX $R $fer

L="32"
R="0.5"
SPC="SPC"
SPC_txt="SPC"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} $SPC_txt p=$p\""
echo -e "# $cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L"
./scl_snr.py "$cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L" $N_MIN $N_MAX $R $fer

L="32"
R="0.33"
SPC="SPC"
SPC_txt="SPC"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} $SPC_txt p=$p\""
echo -e "# $cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L"
./scl_snr.py "$cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L" $N_MIN $N_MAX $R $fer

L="32"
R="0.66"
SPC="SPC"
SPC_txt="SPC"
cmd_line="./bin/aff3ct --sim-type BFER --cde-type POLAR --src-type RAND_FAST --chn-type AWGN_FAST --dec-simd INTRA --crc-type FAST --crc-poly 32-GZIP -t $t -p $p --cde-fb-gen-method GA --dec-type $D" 
echo -e "\n\n\"$algo L=$L R=$R CRC_{32} $SPC_txt p=$p\""
echo -e "# $cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L"
./scl_snr.py "$cmd_line --dec-polar-nodes {R0,R0L,R1,REP,REPL,$SPC} -L $L" $N_MIN $N_MAX $R $fer

