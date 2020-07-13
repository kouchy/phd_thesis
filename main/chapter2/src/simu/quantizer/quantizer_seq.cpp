void quantize_seq(const std::vector<float > &l_float,
                        std::vector<int8_t> &l_fixed,
                  const uint32_t s, const uint32_t v) {
	const size_t N = l_float.size();
	const float factor = 1 << v;
	assert(s >= 2);
	const float q_max = (1 << (s-2)) + (1 << (s-2)) -1;
	const float q_min = -q_max;
	for (size_t n = 0; n < N; n++)
	{
		// q = 2^v * y +- 0.5
		const float q = std::round(factor * l_float[n]);
		// saturation
		l_fixed[n] = (int8_t)std::min(std::max(q, q_min), q_max);
	}
}