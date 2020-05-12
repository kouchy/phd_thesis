template <typename T>
class Reg
{
	// the register type from the MIPP low interface
	mipp::reg r;
	// a simple class constructor encapsulates the load instruction
	Reg(const T *ptr) : r(mipp::load<T>(ptr)) {}
	// the definition of the 'add' method
	inline Reg<T> add(const Reg<T> r) const {
		return mipp::add<T>(r,r.r);
	}
	// overriding of the '+' operator using the previously defined 'add' method
	inline Reg<T> operator+(const Reg<T> r) const {
		return this->add(r);
	}
	/* ... */
};