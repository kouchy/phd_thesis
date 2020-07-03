template <typename B, typename R>
class API_polar_SIMD : public API_polar
{
	template <int N_ELMTS = 0> // <- this template parameter is not used here
	static void f(const R *la, const R *lb, R *lc, const int n_elmts) {
		for (auto n = 0; n < n_elmts; n += mipp::N<R>())
		{   // lc = f(la,lb) = sign(la.lb).min(|la|, |lb|)
			auto r = mipp::neg(mipp::min(mipp::abs(&la[n]), mipp::abs(&lb[n])),
			                   mipp::sign(&la[n], &lb[n]));
			r.store(&lc[n]);
		}
	}
	template <int N_ELMTS = 0> // <- this template parameter is not used here
	static void g(const R *la, const R *lb, const B *sa, R *lc, const int n_elmts) {
		for (auto n = 0; n < n_elmts; n += mipp::N<R>())
		{   // lc = g(la,lb,sa) = (1-2sa)la + lb
			auto r = mipp::neg(&la[n], &sa[n]) + &lb[n];
			r.store(&lc[n]);
		}
	}
	template <int N_ELMTS = 0> // <- this template parameter is not used here
	static void h(const B *sa, const B *sb, B *sc, const int n_elmts) {
		for (auto n = 0; n < n_elmts; n += mipp::N<R>())
		{   // sc = h(sa,sb) = sa XOR sb
			auto r = mipp::R<B>(&sa[n]) ^ mipp::R<B>(&sb[n]);
			r.store(&sc[n])
		}
	}
};