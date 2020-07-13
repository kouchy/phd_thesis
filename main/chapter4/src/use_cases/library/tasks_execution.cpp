// the simulation loop
while (!monitor.fe_limit_achieved()) {
	Src[module::src::tsk::generate    ].exec();
	Enc[module::enc::tsk::encode      ].exec();
	Mdm[module::mdm::tsk::modulate    ].exec();
	Chn[module::chn::tsk::add_noise   ].exec();
	Mdm[module::mdm::tsk::demodulate  ].exec();
	Dec[module::dec::tsk::decode_siho ].exec();
	Mnt[module::mnt::tsk::check_errors].exec();
}