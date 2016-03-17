# clcdutils

Installation(lets my current dir is /home/sk/work and final iso image dir is /home/sk/work/rootdir):

		sudo yum install docker livecd-tools
		cd /home/sk/work/
		cd clcdutils
		git submodule init
		git submodule update
		export CLCDDIR=`pwd`
		cd ../rootdir
		echo "/home/sk/work/clcdutils" > CLCDDIRvar		
		sudo livecd-creator -d -v  -c ../sig-core-livemedia/kickstarts/centos-7-live-gnome-docker.cfg --cache=/home/user/work/livecache/ --nocleanup

