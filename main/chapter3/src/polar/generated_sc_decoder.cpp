/* ... */
// the frozen bits definition (1 = frozen, 0 = not frozen)
static const std::vector<bool> Decoder_polar_SC_fast_sys_fb_8_4_25 = {
1, 1, 1, 0, 1, 0, 0, 0};
// the generated decoder class with templatized bit ('B') and real ('R') types
// and the generic polar API ('API_polar') can be seq., inter- and intra-SIMD
template <typename B, typename R, class API_polar>
class Decoder_polar_SC_fast_sys_N8_K4_SNR25
{
public:
	/* ... */
	// the 'decode' method: recursive function calls are fully unrolled
	// 'l' is the input and intermediate vector of LLRs (RW)
	// 's' is the partial sums and the output vector of bits (RW)
	void decode()
	{
		// ...
		API_polar::template f  <4>(   l,  0+ 0,  0+ 4,         0+ 8, 4);
		API_polar::template rep<4>(s, l,  8+ 0,                0+ 0, 4);
		API_polar::template gr <4>(s, l,  0+ 0,  0+ 4,  0+ 0,  0+ 8, 4);
		API_polar::template spc<4>(s, l,  8+ 0,                4+ 0, 4);
		API_polar::template xo <4>(s,     0+ 0,  0+ 4,         0+ 0, 4);
	}
};
/* ... */