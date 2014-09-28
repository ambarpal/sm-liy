print "make a new directory as a parent of all the work we are going to do"
mkdir liy
cd liy

print "checking/installing git"
apt-get -y install git

print "cloning repository"
git clone git://github.com/ambarpal/sm-liy.git
cd sm-liy

print  "installing dependencies"
apt-get -y install ruby
apt-get -y install bundler
apt-get -y install libsqlite3-dev
apt-get -y install nodejs
bundle install

print "begin the magic"
rails s
