void quantize_seq(const std::vector<float > &Y1,
                        std::vector<int8_t> &Y2,
                  const uint32_t s, const uint32_t v) {
	const size_t K = Y1.size();
	const float factor = 1 << v;
	assert(s >= 2);
	const float q_max = (1 << (s-2)) + (1 << (s-2)) -1;
	const float q_min = -q_max;
	for (size_t k = 0; k < K; k++)
	{
		// q = 2^v * y +- 0.5
		const float q = std::round(factor * Y1[k]);
		// saturation
		Y2[k] = (int8_t)std::min(std::max(q, q_min), q_max);
	}
}