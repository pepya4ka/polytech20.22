#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sokrat/project/learn/Hybridsystem/homework/hw3/lab3_z2/lab3_z2_prj/sol1/.autopilot/db/a.g.bc ${1+"$@"}
