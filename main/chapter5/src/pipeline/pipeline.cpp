#include <aff3ct.hpp>
using namespace aff3ct;

int main()
{
	// 1) creation of the module objects
	module::M1 m1_obj(/* ... */); // 'M1' class contains 't1' task
	module::M2 m2_obj(/* ... */); // 'M2' class contains 't2' task
	module::M3 m3_obj(/* ... */); // 'M3' class contains 't3' task
	module::M4 m4_obj(/* ... */); // 'M4' class contains 't4' task
	module::M5 m5_obj(/* ... */); // 'M5' class contains 't5' task
	module::M6 m6_obj(/* ... */); // 'M6' class contains 't6' task

	// 2) binding of the tasks
	m2_obj[module::m2::sck::t2::in].bind(m1_obj[module::m1::sck::t1::out]);
	m3_obj[module::m3::sck::t3::in].bind(m2_obj[module::m2::sck::t2::out]);
	m4_obj[module::m4::sck::t4::in].bind(m3_obj[module::m3::sck::t3::out]);
	m5_obj[module::m5::sck::t5::in].bind(m4_obj[module::m4::sck::t4::out]);
	m6_obj[module::m6::sck::t6::in].bind(m5_obj[module::m5::sck::t5::out]);

	// 3) creation of the pipeline (= sequences and pipeline analyses)
	tools::Pipeline pipeline(
		// first task of the sequence (for validation purpose)
		m1_obj[module::m1::tsk::t1],
		// description of the sequence decomposition in stages
		{ // pipeline stage 1
		  { { m1_obj[module::m1::tsk::t1] },   // first task of stage 1
		    { m1_obj[module::m1::tsk::t1] } }, // last  task of stage 1
		  // pipeline stage 2
		  { { m2_obj[module::m2::tsk::t2] },   // first task of stage 2
		    { m4_obj[module::m4::tsk::t4] } }, // last  task of stage 2
		  // pipeline stage 3
		  { { m5_obj[module::m5::tsk::t5] },   // first task of stage 3
		    { m6_obj[module::m6::tsk::t6] } }, // last  task of stage 3
		},
		// number of threads per stage (4 sequence duplications in stage 2)
		{ 1, 4, 1 }, /* ... */
		// explicit pinning of the threads
		{
		  {          1 }, // pin thread  '1'       of stage 1 to core  '1'
		  { 3, 4, 5, 6 }, // pin threads '1,2,3,4' of stage 2 to cores '3,4,5,6'
		  {          8 }, // pin thread  '1'       of stage 3 to core  '8'
		});

	// 4) execution of the pipeline, it is indefinitely executed in loop
	pipeline.exec([]() { return false; });

	return 0;
}