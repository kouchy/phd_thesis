namespace aff3ct { namespace module {
template <typename B = int> // B defines the type of the bits
class Encoder : public Module // the Encoder class inherit from the Module class
{
public:
	Encoder(/*...*/) : Module(/*...*/) // constructor method implementation
	{
		auto &ref_t = this->create_task("encode");
		auto su = this->template create_socket_in <B>(ref_t, "u", this->K);
		auto sc = this->template create_socket_out<B>(ref_t, "c", this->N);
		this->create_codelet(ref_t, [su, sc](Module &m, Task &t) -> int
		{   // these static_cast are here to convert 'm' and 't' in the right types
			static_cast<Encoder<B>&>(m).encode(static_cast<B*>(t[su].get_dataptr()),
			                                   static_cast<B*>(t[sc].get_dataptr()));
			return status_t::SUCCESS;
		});
	}
	virtual void encode(const B *u, B *c) = 0; // pure virtual method definition
};
} }
