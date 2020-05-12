#include <mipp.h>

void decode_BP_min_sum(const std::vector<std::vector<int>>   &H
                             std::vector<mipp::Reg<int16_t>> &VN
                             std::vector<mipp::Reg<int16_t>> &M,
                             std::vector<mipp::Reg<int16_t>> &C
                       const unsigned                        nIte) {
  constexpr auto N = mipp::nElReg<int16_t>();
  const auto max = std::numeric_limits<int16_t>::max();
  const auto zeroMsk = mipp::Msk<N>(false);
  const auto zero = mipp::Reg<int16_t>(0);
  for (auto i = 0; i < nIte; i++) {
    auto mRead = 0, mWrite = 0;
    for (auto c = 0; c < H.size(); c++) {
      auto sign = zeroMsk;
      auto min1 = mipp::Reg<int16_t>(max);
      auto min2 = mipp::Reg<int16_t>(max);
      for (auto v = 0; v < H[c].size(); v++) {
        C[v] = VN[H[c][v]] - M[mRead++];
        auto cabs = mipp::abs(C[v]);
        auto ctmp = min1;
        sign ^= mipp::sign(C[v]);
        min1  = mipp::min(min1,           cabs       );
        min2  = mipp::min(min2, mipp::max(cabs, ctmp));
      }
      auto cst1 = mipp::blend(zero, min2, zero > min2);
      auto cst2 = mipp::blend(zero, min1, zero > min1);
      for (auto v = 0; v < H[c].size(); v++) {
        auto cval = C[v];
        auto cabs = mipp::abs(cval);
        auto cres = mipp::blend(cst1, cst2, cabs == min1);
        auto csig = sign ^ mipp::sign(cval);
             cres = mipp::copysign(cres, csig);
        M[mWrite++] = cres;
        VN[H[c][v]] = C[v] + cres;
} } } }