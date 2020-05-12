void Generated_SC_decoder_N8_K4::decode()
{
  f  <   R, F, FI, 0, 4,    8, 4>::apply(l   );
  rep<B, R, H, HI, 8,       0, 4>::apply(l, s);
  gr <B, R, G, GI, 0, 4, 0, 8, 4>::apply(l, s);
  spc<B, R, H, HI, 8,       4, 4>::apply(l, s);
  xo <B,    X, XI, 0, 4,    0, 4>::apply(   s);
}