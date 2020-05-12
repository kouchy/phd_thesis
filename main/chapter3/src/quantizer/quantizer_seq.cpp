void scalarQuantizer(const std::vector<float > &Y1,
                           std::vector<int8_t> &Y2,
                     const unsigned s, const unsigned v) {
  const auto  K = Y1.size();
  const float factor = 1 << v;
  const float qMax = (1 << (s-2)) + (1 << (s-2)) -1;
  const float qMin = -qMax;
  for (auto k = 0; k < K; k++) {
    // q = 2^v * y +- 0.5
    float q = std::round(factor * Y1[k]);
    // saturation
    Y2[k] = (int8_t)std::min(std::max(q, qMin), qMax);
} }
