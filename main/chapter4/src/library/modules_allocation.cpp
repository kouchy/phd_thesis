#include <aff3ct.hpp>
using namespace aff3ct;

// allocate the module objects
module::Source_random<>          Src(K   );
module::Encoder_repetition_sys<> Enc(K, N);
module::Modem_BPSK<>             Mdm(N   );
module::Channel_AWGN_LLR<>       Chn(N   );
module::Decoder_repetiton_std<>  Dec(K, N);
module::Monitor_BFER<>           Mnt(K, E);