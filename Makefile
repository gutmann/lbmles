# BIN := gpu_lbm cpu_lbm af_lbm shift

# CFLAGS += -arch=sm_21 --ptxas-options=-v
# LDFLAGS += -lafGFX
LDFLAGS=-lm

cpu_lbm: cpu_lbm.cpp
	${CC} $^ $(LDFLAGS) -o $@
