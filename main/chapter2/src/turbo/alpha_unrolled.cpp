const mipp::Reg<R> alpha_kprev_0 = &alpha[0][k -1];
const mipp::Reg<R> alpha_kprev_1 = &alpha[1][k -1];
// ...
const mipp::Reg<R> alpha_kprev_7 = &alpha[7][k -1];
auto alpha_k_0 = mipp::max(alpha_kprev_0 + gamma, alpha_kprev_1 - gamma);
auto alpha_k_1 = mipp::max(alpha_kprev_3 + gamma, alpha_kprev_2 - gamma);
auto alpha_k_2 = mipp::max(alpha_kprev_4 + gamma, alpha_kprev_5 - gamma);
auto alpha_k_3 = mipp::max(alpha_kprev_7 + gamma, alpha_kprev_6 - gamma);
auto alpha_k_4 = mipp::max(alpha_kprev_1 + gamma, alpha_kprev_0 - gamma);
auto alpha_k_5 = mipp::max(alpha_kprev_2 + gamma, alpha_kprev_3 - gamma);
auto alpha_k_6 = mipp::max(alpha_kprev_5 + gamma, alpha_kprev_4 - gamma);
auto alpha_k_7 = mipp::max(alpha_kprev_6 + gamma, alpha_kprev_7 - gamma);