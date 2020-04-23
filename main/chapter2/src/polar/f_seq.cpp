template <typename R>
R f_seq(const R& la, const R& lb)
{
  auto abs_la  = (la >= 0) ? la : -la;
  auto abs_lb  = (lb >= 0) ? lb : -lb;
  auto min_abs = std::min(abs_la, abs_lb);
  auto sign    = (0 < la*lb) - (la*lb < 0);
  auto lc      = (R)sign * min_abs;

  return lc;
}