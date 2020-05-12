template <typename T>
class Reg {
  mipp::reg r; // the register type from MIPP low
  Reg(const T *ptr) : r(mipp::load<T>(ptr)) {}
  inline Reg<T> add(const Reg<T> r) const {
    return mipp::add<T>(r,r.r);
  }
  inline Reg<T> operator+(const Reg<T> r) const {
    return this->add(r);
  } /* ... */
};