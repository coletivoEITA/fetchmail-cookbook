#
# Cookbook Name:: fetchmail
# Recipe:: default
#
# Copyright 2014, Bráulio Bhavamitra <braulio@eita.org.br>
#
# License: GPLv3+
#

default['fetchmail']['timeout'] = 20
default['fetchmail']['invisible'] = true
default['fetchmail']['no_bouncemail'] = true
default['fetchmail']['syslog'] = true
default['fetchmail']['logfile'] = nil

default['fetchmail']['fetches'] = []
fetches_example = [
  {
    'server' => 'mail.domain.com',
    'protocol' => 'pop3',
    'username' => 'me@domain.com',
    'password' => 'a1b2c3',
    'mda' => 'echo got email',
    'no_keep' => false,
  },
]
