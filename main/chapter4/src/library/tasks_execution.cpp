using namespace aff3ct::module;

// the simulation loop
while (!monitor.fe_limit_achieved()) {
  Src[src::tsk::generate    ].exec();
  Enc[enc::tsk::encode      ].exec();
  Mdm[mdm::tsk::modulate    ].exec();
  Chn[chn::tsk::add_noise   ].exec();
  Mdm[mdm::tsk::demodulate  ].exec();
  Dec[dec::tsk::decode_siho ].exec();
  Mnt[mnt::tsk::check_errors].exec();
}