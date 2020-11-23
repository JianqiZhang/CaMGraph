#!/bin/bash
RUNDIR=$HOME/{your run dir}
#cp -a $HOME/linebacker/configs/tested-cfgs/SM2_GTX480/ $RUNDIR
#copy your configs of GPU micro-archi to the run dir by your self
cd $RUNDIR
{ { $@; } > >(tee stdout.txt ); } 2> >( tee stderr.txt >&2 )
echo "GPGPU-Sim (CaMGraph) finished running \"$@\""
echo "Used rundir=$RUNDIR"
