template <typename R>
mipp::vec f_simd(const mipp::vec& la, const mipp::vec& lb)
{
  auto abs_la  = mipp::abs <R>(la             );
  auto abs_lb  = mipp::abs <R>(lb             );
  auto min_abs = mipp::min <R>(abs_la,  abs_lb);
  auto sign    = mipp::sign<R>(la,      lb    );
  auto lc      = mipp::neg <R>(min_abs, sign  );

  return lc;
}