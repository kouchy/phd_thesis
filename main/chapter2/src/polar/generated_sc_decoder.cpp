// the frozen bits definition (1 = frozen, 0 = not frozen)
static const std::vector<bool> Decoder_polar_SC_N8_K4 = {
1, 1, 1, 0, 1, 0, 0, 0};
// the generated decoder class with templatized bit ('B') and real ('R') types
// and the generic polar API ('API_polar') can be seq., inter- and intra-SIMD
template <typename B, typename R, class API_polar>
class Decoder_polar_SC_N8_K4
{
public:
	// the 'decode' method: recursive function calls are fully unrolled
	// 'l' is the input and intermediate vector of LLRs (RW)
	// 's' is the partial sums and the output vector of bits (RW)
	void decode()
	{   // ...                  n_elmts   read   read   read  write  n_elmts
		//                       static    l/s    l/s    l/s    l/s  dynamic
		API_polar::template f  <      4>(l + 0, l + 4,        l + 8,       4);
		API_polar::template rep<      4>(l + 8,               s + 0,       4);
		API_polar::template gr <      4>(l + 0, l + 4, s + 0, l + 8,       4);
		API_polar::template spc<      4>(l + 8,               s + 4,       4);
		API_polar::template h  <      4>(s + 0, s + 4,        s + 0,       4);
	}
	/* ... */
};