template <typename B, typename R>
class API_polar_simd : public API_polar
{
public:
	static mipp::Reg<R> f(const mipp::Reg<R> &la, const mipp::Reg<R> &lb)
	{
		auto abs_la  = mipp::abs(la);
		auto abs_lb  = mipp::abs(lb);
		auto abs_min = mipp::min(abs_la, abs_lb);
		auto sign    = mipp::sign(la, lb);
		auto lc      = mipp::neg(abs_min, sign);

		return lc;
	}
	static mipp::Reg<R> g(const mipp::Reg<R> &la, const mipp::Reg<R> &lb,
	                      const mipp::Reg<B> &sa)
	{
		auto neg_la = mipp::neg(la, sa);
		auto lc     = neg_la + lb;

		return lc;
	}
	static mipp::Reg<B> h(const mipp::Reg<B>& sa, const mipp::Reg<B>& sb)
	{
		return sa ^ sb;
	}
};