# CHANGELOG

## 0.1.9

* added eyp-apt as a dependency

## 0.1.8

* if allowed_hosts is an empty array [], do not add this directive to the config file

## 0.1.7

* bugfix plugins_packages dependencies

## 0.1.6

* updated PID file for ubuntu16

## 0.1.5

* added support for SLES11SP3

## 0.1.4

* added **/etc/default/nagios-nrpe-server** under puppet control
* ubuntu 16.04 support

## 0.1.3

* bugfix plugins packages

## 0.1.2

* renamed **nrpe::plugins_package_name variable** to **nrpe::plugins_packages variable**

## 0.1.1

* added **nrpe::plugins_package_name variable**

## 0.1.0

* initial release
