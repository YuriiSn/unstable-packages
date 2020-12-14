#!@TERMUX_PREFIX@/bin/sh
##
##  Hashcat will load libOpenCL.so library which may be
##  incompatible with Termux environment. So LD_* variables
##  should be unset.
##

unset LD_PRELOAD
export LD_LIBRARY_PATH=/system/vendor/lib64:$LD_LIBRARY_PATH

exec @TERMUX_PREFIX@/libexec/hashcat "$@"
