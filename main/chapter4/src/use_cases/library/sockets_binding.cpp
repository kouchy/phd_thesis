// bind the sockets over the tasks
Enc[module::enc::sck::encode      ::u ].bind(Src[module::src::sck::generate   ::u]);
Mdm[module::mdm::sck::modulate    ::c ].bind(Enc[module::enc::sck::encode     ::c]);
Chn[module::chn::sck::add_noise   ::x ].bind(Mdm[module::mdm::sck::modulate   ::x]);
Mdm[module::mdm::sck::demodulate  ::y ].bind(Chn[module::chn::sck::add_noise  ::y]);
Dec[module::dec::sck::decode_siho ::l ].bind(Mdm[module::mdm::sck::demodulate ::l]);
Mnt[module::mnt::sck::check_errors::u1].bind(Src[module::src::sck::generate   ::u]);
Mnt[module::mnt::sck::check_errors::u2].bind(Dec[module::dec::sck::decode_siho::u]);