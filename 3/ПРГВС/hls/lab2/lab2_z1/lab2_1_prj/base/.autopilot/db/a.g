#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sokrat/project/learn/Hybridsystem/homework/hw2/lab2_z1/lab2_1_prj/base/.autopilot/db/a.g.bc ${1+"$@"}
