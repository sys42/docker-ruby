#!/bin/bash

#rubyX.sh 1.9.1 161 31 # ruby 1.9.1
#rubyX.sh 2.0   171 41 # ruby 2.0
#rubyX.sh 2.1   181 51 # ruby 2.1
#rubyX.sh 2.2   191 61 # ruby 2.2

set -e
source /tmp_build/apt-get-helper
set -x

minimal_apt_get_install ruby$1 ruby$1-dev
update-alternatives --install /usr/bin/gem gem /usr/bin/gem$1 $2
update-alternatives \
	--install /usr/bin/ruby ruby /usr/bin/ruby$1 $3 \
	--slave /usr/bin/erb erb /usr/bin/erb$1 \
	--slave /usr/bin/testrb testrb /usr/bin/testrb$1 \
	--slave /usr/bin/rake rake /usr/bin/rake$1 \
	--slave /usr/bin/irb irb /usr/bin/irb$1 \
	--slave /usr/bin/rdoc rdoc /usr/bin/rdoc$1 \
	--slave /usr/bin/ri ri /usr/bin/ri$1 \
	--slave /usr/share/man/man1/ruby.1.gz ruby.1.gz /usr/share/man/man1/ruby$1.*.gz \
	--slave /usr/share/man/man1/erb.1.gz erb.1.gz /usr/share/man/man1/erb$1.*.gz \
	--slave /usr/share/man/man1/irb.1.gz irb.1.gz /usr/share/man/man1/irb$1.*.gz \
	--slave /usr/share/man/man1/rake.1.gz rake.1.gz /usr/share/man/man1/rake$1.*.gz \
	--slave /usr/share/man/man1/ri.1.gz ri.1.gz /usr/share/man/man1/ri$1.*.gz
gem$1 install rake bundler --no-rdoc --no-ri
/tmp_build/ruby-finalize.sh



