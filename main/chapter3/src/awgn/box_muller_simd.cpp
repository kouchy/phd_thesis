#include <mipp.h>

void box_muller_transform(const std::vector<float> &uni_rand,
                                std::vector<float> &norm_rand) {
	constexpr int32_t N = mipp::N<float>();
	const size_t n_elmts = uni_rand.size();
	const float two_pi = 2.f * 3.141592f;
	for (size_t i = 0; i < n_elmts; i += N * 2) {
		const auto u1 = mipp::Reg<float>(&uni_rand[   i]);
		const auto u2 = mipp::Reg<float>(&uni_rand[N +i]);
		const auto radius = mipp::sqrt(mipp::log(u1) * -2.f);
		const auto theta  = u2 * two_pi;
		mipp::Reg<float> sintheta, costheta;
		mipp::sincos(theta, sintheta, costheta);
		auto z1 = radius * costheta;
		auto z2 = radius * sintheta;
		z1.store(&norm_rand[   i]);
		z2.store(&norm_rand[N +i]);
	}
}