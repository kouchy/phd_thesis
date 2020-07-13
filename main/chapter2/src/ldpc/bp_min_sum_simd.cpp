#include <mipp.h>

void decode_BP_min_sum(const std::vector<std::vector<size_t>> &H
                             std::vector<mipp::Reg<int16_t>>  &VN
                             std::vector<mipp::Reg<int16_t>>  &M,
                             std::vector<mipp::Reg<int16_t>>  &C
                       const size_t                           n_ite) {
	constexpr int32_t N = mipp::N<int16_t>();
	const int16_t max = std::numeric_limits<int16_t>::max();
	const auto msk_zero = mipp::Msk<N>(false);
	const auto zero = mipp::Reg<int16_t>(0);
	for (size_t i = 0; i < n_ite; i++) {
		size_t m_read = 0, m_write = 0;
		for (size_t c = 0; c < H.size(); c++) {
			auto sign = msk_zero;
			auto min1 = mipp::Reg<int16_t>(max);
			auto min2 = mipp::Reg<int16_t>(max);
			for (size_t v = 0; v < H[c].size(); v++) {
				C[v] = VN[H[c][v]] - M[m_read++];
				auto cabs = mipp::abs(C[v]);
				auto ctmp = min1;
				sign ^= mipp::sign(C[v]);
				min1  = mipp::min(min1,           cabs       );
				min2  = mipp::min(min2, mipp::max(cabs, ctmp));
			}
			auto cst1 = mipp::blend(zero, min2, zero > min2);
			auto cst2 = mipp::blend(zero, min1, zero > min1);
			for (size_t v = 0; v < H[c].size(); v++) {
				auto cval = C[v];
				auto cabs = mipp::abs(cval);
				auto cres = mipp::blend(cst1, cst2, cabs == min1);
				auto csig = sign ^ mipp::sign(cval);
				cres = mipp::copysign(cres, csig);
				M[m_write++] = cres;
				VN[H[c][v]] = C[v] + cres;
			}
		}
	}
}