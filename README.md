# clcdutils

Installation:

		sudo yum install docker livecd-tools
		cd clcdutils
		git submodule init
		git submodule update
		livecd-creator -d -v  -c sig-core-livemedia/kickstarts/centos-7-live-gnome-docker.cfg --cache=/home/user/work/livecache/ --nocleanup

