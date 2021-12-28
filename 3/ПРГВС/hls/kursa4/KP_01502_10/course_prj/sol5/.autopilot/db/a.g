#!/bin/sh
lli=${LLVMINTERP-lli}
exec $lli \
    /home/sokrat/project/learn/Hybridsystem/KP_01502_10/course_prj/sol5/.autopilot/db/a.g.bc ${1+"$@"}
