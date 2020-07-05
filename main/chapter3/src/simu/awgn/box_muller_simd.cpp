#include <mipp.h>

void box_muller_transform(const std::vector<float> &uni_rand,
                                std::vector<float> &norm_rand) {
	const size_t N = uni_rand.size();
	const float two_pi = 2.f * 3.141592f;
	for (size_t n = 0; n < N; n += mipp::N<float>() * 2)
	{
		const auto u1 = mipp::Reg<float>(&uni_rand[                  n]);
		const auto u2 = mipp::Reg<float>(&uni_rand[mipp::N<float>() +n]);
		const auto radius = mipp::sqrt(mipp::log(u1) * -2.f);
		const auto theta  = u2 * two_pi;
		mipp::Reg<float> sintheta, costheta;
		mipp::sincos(theta, sintheta, costheta);
		auto z1 = radius * costheta;
		auto z2 = radius * sintheta;
		z1.store(&norm_rand[                  n]);
		z2.store(&norm_rand[mipp::N<float>() +n]);
	}
}