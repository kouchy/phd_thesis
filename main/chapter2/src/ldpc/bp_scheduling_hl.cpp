template <typename B, typename R, class Update_rules>
void Decoder_LDPC_BP_horizontal_layered<B,R,Update_rules>
::decode_single_ite(std::vector<R> &var_nodes, std::vector<R> &messages) {
	size_t kr = 0, kw = 0; // read and write indexes
	const auto n_chk_nodes = (int)this->H.get_n_cols();
	for (auto c = 0; c < n_chk_nodes; c++)
	{
		const auto chk_degree = (int)this->H[c].size();
		this->up_rules.begin_chk_node_in(c, chk_degree);
		for (auto v = 0; v < chk_degree; v++)
		{
			this->contribs[v] = var_nodes[this->H[c][v]] - messages[kr++];
			this->up_rules.compute_chk_node_in(v, this->contribs[v]);
		}
		this->up_rules.end_chk_node_in();

		this->up_rules.begin_chk_node_out(c, chk_degree);
		for (auto v = 0; v < chk_degree; v++)
		{
			messages[kw] = this->up_rules.compute_chk_node_out(v, this->contribs[v]);
			var_nodes[this->H[c][v]] = this->contribs[v] + messages[kw++];
		}
		this->up_rules.end_chk_node_out();
	}
}
