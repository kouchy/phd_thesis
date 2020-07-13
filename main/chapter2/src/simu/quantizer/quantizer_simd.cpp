#include <mipp.h>

void quantize_simd(const std::vector<float > &l_float,
                         std::vector<int8_t> &l_fixed,
                   const uint32_t s, const uint32_t v) {
	const size_t N = l_float.size();
	const float factor = mipp::Reg<float>(1 << v);
	assert(s >= 2);
	const float q_max = (1 << (s-2)) + (1 << (s-2)) -1;
	const float q_min = -q_max;
	for (size_t n = 0; n < N; n += 4 * mipp::N<float>())
	{
		// implicit loads and q = 2^v * y +- 0.5
		mipp::Reg<float> q32_0 = mipp::round(factor * &l_float[n+0*mipp::N<float>()]);
		mipp::Reg<float> q32_1 = mipp::round(factor * &l_float[n+1*mipp::N<float>()]);
		mipp::Reg<float> q32_2 = mipp::round(factor * &l_float[n+2*mipp::N<float>()]);
		mipp::Reg<float> q32_3 = mipp::round(factor * &l_float[n+3*mipp::N<float>()]);
		// convert float to int32_t
		mipp::Reg<int32_t> q32i_0 = mipp::cvt<int32_t>(q32_0);
		mipp::Reg<int32_t> q32i_1 = mipp::cvt<int32_t>(q32_1);
		mipp::Reg<int32_t> q32i_2 = mipp::cvt<int32_t>(q32_2);
		mipp::Reg<int32_t> q32i_3 = mipp::cvt<int32_t>(q32_3);
		// pack four int32_t in two int16_t
		mipp::Reg<int16_t> q16i_0 = mipp::pack<int32_t,int16_t>(q32i_0, q32i_1);
		mipp::Reg<int16_t> q16i_1 = mipp::pack<int32_t,int16_t>(q32i_2, q32i_3);
		// pack two int16_t in one int8_t
		mipp::Reg<int8_t> q8i = mipp::pack<int16_t,int8_t>(q16i_0, q16i_1);
		// saturation
		mipp::Reg<int8_t> q8is = mipp::sat(q8i, q_min, q_max);
		q8is.store(&l_fixed[k]);
	}
}