#include <aff3ct.hpp>
using namespace aff3ct;

constexpr int K = 128; // number of information bits
constexpr int N = 256; // codeword or frame size
constexpr int E = 100; // number of errors to simulate

// allocate the module objects
module::Source_random<>      Src(K   );
module::Encoder_repetition<> Enc(K, N);
module::Modem_BPSK<>         Mdm(N   );
module::Channel_AWGN<>       Chn(N   );
module::Decoder_repetiton<>  Dec(K, N);
module::Monitor_BFER<>       Mnt(K, E);