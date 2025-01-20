#!/bin/bash

export VCS_HOME=/opt/coe/synopsys/vcs/V-2023.12-1/
export VERDI_HOME=/opt/coe/synopsys/verdi/V-2023.12-1/

export UVMHOME=/opt/coe/synopsys/vcs/V-2023.12-1/etc/uvm

source /opt/coe/synopsys/vcs/V-2023.12-1/setup.vcs.sh
#source /opt/coe/synopsys/verdi/V-2023.12-1/setup.verdi.sh

export PATH=$VERDI_HOME/bin:$PATH
export LD_LIBRARY_PATH=$VERDI_HOME/share/FsdbWriter/LINUX64/:$VERDI_HOME/share/FsdbReader/LINUX64/:$LD_LIBRARY_PATH

echo "Done Sourcing!"

