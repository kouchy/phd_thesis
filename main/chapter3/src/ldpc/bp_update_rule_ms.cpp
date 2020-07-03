template <typename R> void Update_rules_MS<R>
::begin_chk_node_in(const int chk_id, const int chk_degree) {
	this->sign = mipp::Msk<mipp::N<R>()>(false);
	this->min1 = mipp::Reg<R>(std::numeric_limits<R>::max());
	this->min2 = mipp::Reg<R>(std::numeric_limits<R>::max());
}
template <typename R> void Update_rules_MS<R>
::compute_chk_node_in(const int var_id, const mipp::Reg<R> var_val) {
	const auto var_abs  = mipp::abs(var_val);
	this->sign ^= mipp::sign(var_val);
	this->min2  = mipp::min(this->min2, mipp::max(var_abs, this->min1));
	this->min1  = mipp::min(this->min1,           var_abs             );
}
template <typename R> void Update_rules_MS<R>
::end_chk_node_in() {
	this->cst1 = mipp::max(mipp::Reg<R>(0), this->min2);
	this->cst2 = mipp::max(mipp::Reg<R>(0), this->min1);
}
template <typename R> mipp::Reg<R> Update_rules_MS<R>
::compute_chk_node_out(const int var_id, const mipp::Reg<R> var_val) {
	const auto var_abs = mipp::abs(var_val);
	      auto res_abs = mipp::blend(this->cst1, this->cst2, var_abs == this->min1);
	return mipp::copysign(res_abs, this->sign ^ mipp::sign(var_val));
}
