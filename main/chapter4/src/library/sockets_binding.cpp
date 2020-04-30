using namespace aff3ct::module;

// bind the sockets over the tasks
Enc[enc::sck::encode      ::U_K ].bind(Src[src::sck::generate   ::U_K ]);
Mdm[mdm::sck::modulate    ::X_N1].bind(Enc[enc::sck::encode     ::X_N ]);
Chn[chn::sck::add_noise   ::X_N ].bind(Mdm[mdm::sck::modulate   ::X_N2]);
Mdm[mdm::sck::demodulate  ::Y_N1].bind(Chn[chn::sck::add_noise  ::Y_N ]);
Dec[dec::sck::decode_siho ::Y_N ].bind(Mdm[mdm::sck::demodulate ::Y_N2]);
Mnt[mnt::sck::check_errors::U   ].bind(Src[src::sck::generate   ::U_K ]);
Mnt[mnt::sck::check_errors::V   ].bind(Dec[dec::sck::decode_siho::V_K ]);