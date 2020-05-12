#include <mipp.h>

void SIMDQuantizer(const std::vector<float > &Y1,
                         std::vector<int8_t> &Y2,
                   const unsigned s, const unsigned v) {
	constexpr auto N = mipp::nElReg<float>();
	const auto K = Y1.size();
	const auto factor = mipp::Reg<float>(1 << v);
	const float qMax = (1 << (s-2)) + (1 << (s-2)) -1;
	const float qMin = -qMax;
	for (auto k = 0; k < K; k += 4 * N) {
		// implicit loads and q = 2^v * y +- 0.5
		auto q32_0 = mipp::round(factor * &Y1[k + 0*N]);
		auto q32_1 = mipp::round(factor * &Y1[k + 1*N]);
		auto q32_2 = mipp::round(factor * &Y1[k + 2*N]);
		auto q32_3 = mipp::round(factor * &Y1[k + 3*N]);
		// convert float to int32_t
		auto q32i_0 = mipp::cvt<int32_t>(q32_0);
		auto q32i_1 = mipp::cvt<int32_t>(q32_1);
		auto q32i_2 = mipp::cvt<int32_t>(q32_2);
		auto q32i_3 = mipp::cvt<int32_t>(q32_3);
		// pack four int32_t in two int16_t
		auto q16i_0 = mipp::pack<int32_t,int16_t>(q32i_0, q32i_1);
		auto q16i_1 = mipp::pack<int32_t,int16_t>(q32i_2, q32i_3);
		// pack two int16_t in one int8_t
		auto q8i = mipp::pack<int16_t,int8_t>(q16i_0, q16i_1);
		// saturation
		auto q8is = mipp::sat(q8i, qMin, qMax);
		q8is.store(&Y2[k]);
	}
}