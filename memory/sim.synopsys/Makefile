SHELL := bash
SEED  := $(shell echo $$RANDOM)
TEST  := mem_wr_rd_test
ITER  := "1"
PKTL  := "7"
PKTD  := "4"
PKTV  := "3"

comp:
	rm -Rf comp.log cov_work/test.vdb
	vcs -full64 -sverilog -ntb_opts uvm-1.1 -timescale=1ns/1ps -kdb -debug_access+all -f filelist.f -cm line+tgl+assert+fsm+branch -cm_tgl portsonly -cm_tgl structarr -cm_report noinitial -cm_seqnoconst -cm_dir cov_work/test.vdb -cm_hier cover.cfg +define+PKT_LENGTH="${PKTL}" +define+PKT_DELAY="${PKTD}" +define+PKT_VCS="${PKTV}" |& tee comp.log
run:
	echo "TEST is ${TEST}"
	rm -Rf run.log ${TEST}.log myfsdb.fsdb ${TEST}.fsdb
	./simv -ucli -i mydump_fsdb.tcl +UVM_TESTNAME="${TEST}" +UVM_TIMEOUT=100000 +ntb_random_seed=1 -cm line+tgl+assert+fsm+branch -cm_dir cov_work/test.vdb -cm_log /dev/null -assert nopostproc -cm_name test_"${TEST}" |& tee run.log
	mv run.log ${TEST}.log
	mv myfsdb.fsdb ${TEST}.fsdb
runx:
	echo "TEST is ${TEST}"
	rm -Rf run.log ${TEST}_*.log myfsdb.fsdb ${TEST}_*.fsdb
	./simv -ucli -i mydump_fsdb.tcl +UVM_TESTNAME="${TEST}" +UVM_TIMEOUT=100000 +ntb_random_seed="${SEED}" -cm line+tgl+assert+fsm+branch -cm_dir cov_work/test.vdb -cm_log /dev/null -assert nopostproc -cm_name test_"${TEST}"_"${ITER}" |& tee run.log
	mv run.log ${TEST}_${ITER}.log
	mv myfsdb.fsdb ${TEST}_${ITER}.fsdb
cov:
	rm -Rf cov.log cov_work/urgReport
	urg -full64 -format both -report cov_work/urgReport -dir cov_work/test.vdb |& tee cov.log
clean:
	rm -Rf csrc simv* vc_hdrs.h tr_db.log uclk.key verdi_config_file verdiLog novas_dump.log ucli.key comp.log cov_work/test.vdb logs/*.log logs/*.fsdb run.log ${TEST}*.log myfsdb.fsdb ${TEST}*.fsdb cov.log cov_work/urgReport
