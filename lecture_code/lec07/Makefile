ackermann = ackermann_cfg.dot ackermann.ll ackermann_opt_cfg.dot ackermann_opt.ll 
loops = loops_cfg.dot loops.ll loops_opt_cfg.dot loops_opt.ll loops_O3_opt.ll loops_O3_opt_cfg.dot

all: $(ackermann) $(loops)

view_ackermann: view_cfg_ackermann
view_ackermann_opt: view_cfg_ackermann_opt
view_loops: view_cfg_loops
view_loops_opt: view_cfg_loops_opt
view_loops_O3_opt: view_cfg_loops_O3_opt

view_cfg_%:  %_cfg.dot 
	xdot $< &

%.ll: %.c
	clang -S -O0 -emit-llvm $< -o $@

%_opt.ll: %.c 
	clang -S -O1 -emit-llvm $< -o $@

%_O3_opt.ll: %.c 
	clang -S -O3 -emit-llvm $< -o $@

%_cfg.dot: %.ll
	opt --dot-cfg $< --disable-output --cfg-dot-filename-prefix=cfg_
	mv cfg_* $@

.PHONY: clean
clean:
	rm -f *.ll *.dot
