#include <mipp.h>

void box_muller_transform(const std::vector<float> &uniRand
                                std::vector<float> &norRand) {
  constexpr auto N = mipp::N<float>();
  const auto nElmts = uniRand.size();
  const auto twoPi = 2.f * 3.141592f;
  for (auto i = 0; i < nElmts; i += N * 2) {
    const auto u1 = mipp::Reg<float>(&uniRand[   i]);
    const auto u2 = mipp::Reg<float>(&uniRand[N +i]);
    const auto radius = mipp::sqrt(mipp::log(u1) * -2.f);
    const auto theta  = u2 * twoPi;
    mipp::Reg<float> sintheta, costheta;
    mipp::sincos(theta, sintheta, costheta);
    auto z1 = radius * costheta;
    auto z2 = radius * sintheta;
    z1.store(&norRand[   i]);
    z2.store(&norRand[N +i]);
} }
