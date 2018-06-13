#!/bin/bash
test -f /.kconfig && . /.kconfig
test -f /.profile && . /.profile
echo "Configure image: [$kiwi_iname]..."
suseSetupProduct

# we add a couple of repos to the tarball system

# feel free to add additional ones/remove (e.g. add packman repo)

zypper ar http://download.opensuse.org/distribution/leap/15.0/repo/oss/ oss
zypper ar http://download.opensuse.org/distribution/leap/15.0/repo/non-oss/ non-oss
zypper ar http://download.opensuse.org/update/leap/15.0/oss/ oss-updates
zypper ar http://download.opensuse.org/update/leap/15.0/non-oss/ non-oss-updates


suseConfig
baseCleanMount
exit 0
