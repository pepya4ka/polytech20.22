#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sokrat/project/learn/Hybridsystem/homework/hw2/lab2_z1/lab2_1_prj/ex_sol1/.autopilot/db/a.g.bc ${1+"$@"}
