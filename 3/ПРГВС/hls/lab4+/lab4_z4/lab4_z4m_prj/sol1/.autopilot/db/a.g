#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sokrat/project/learn/Hybridsystem/homework/hw4+/lab4_z4/lab4_z4m_prj/sol1/.autopilot/db/a.g.bc ${1+"$@"}
