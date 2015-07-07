require 'serverspec'
require 'docker'

set :backend, 'docker'
set :host, 'https://192.168.59.103:2376'
set :os, family: :ubuntu

Specinfra.configuration.env = []

Docker.options = {
  client_cert: '/Users/toto/.boot2docker/certs/boot2docker-vm/cert.pem',
  client_key: '/Users/toto/.boot2docker/certs/boot2docker-vm/key.pem',
  ssl_ca_file: '/Users/toto/.boot2docker/certs/boot2docker-vm/ca.pem',
  scheme: 'https',
  read_timeout: 3600
}

Excon.defaults[:ssl_verify_peer] = false
