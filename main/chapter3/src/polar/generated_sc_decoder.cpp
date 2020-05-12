// ...
static const std::vector<bool> Decoder_polar_SC_fast_sys_fb_8_4_25 = {
1, 1, 1, 0, 1, 0, 0, 0};

template <typename B, typename R, class API_polar>
class Decoder_polar_SC_fast_sys_N8_K4_SNR25
{
public:
  // ...
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
// ...