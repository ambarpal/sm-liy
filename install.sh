print "make a new directory as a parent of all the work we are going to do"
mkdir liy
cd liy

print "checking/installing git"
apt-get install git

print "cloning repository"
git clone git://github.com/ambarpal/sm-liy.git
cd sm-liy

print  "installing dependencies"
apt-get install ruby
apt-get install bundler
apt-get install libsqlite3-dev
apt-get install nodejs
bundle install

print "begin the magic"
rails s
