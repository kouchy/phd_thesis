for (auto j = 0; j < n_states; j++) // in the LTE standard 'n_states' = 8
{
	const mipp::Reg<R> alpha_kprev1_j = &alpha[trellis[1][j]][k -1];
	const mipp::Reg<R> alpha_kprev2_j = &alpha[trellis[2][j]][k -1];
	auto alpha_k_j = mipp::max(alpha_kprev1_j + gamma, alpha_kprev2_j - gamma);
}