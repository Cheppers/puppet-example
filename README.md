# Puppet example for OSX

Small puppet example that installs homebrew and php5.6 on your mac.

To install puppet:

1. Install ruby > 2.0.0. ## One-liner with RVM: 
`curl -sSL https://get.rvm.io | bash -s stable && rvm install 2.2.2 --default`
2. `gem install puppet` 

To make Puppet execute the modifications on your system type:

```
sudo ./install.sh
```

Note: This will replace your system php with php 5.6 from brew. Your old php will live under the name php-orig in /usr/bin.
