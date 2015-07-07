require 'spec_helper'

describe 'nacyot/redis Image' do
  before(:all) do
    image = Docker::Image.build_from_dir('.');
    set :docker_image, image.id
  end

  describe file('/etc') do
    it { should be_directory }
  end

  describe package('redis-server') do
    it { should be_installed }
  end

  describe package('nginx') do
    it { should be_installed }
  end
  
  describe file('/usr/bin/redis-server') do
    it { should be_executable }
  end

  describe process('redis-server') do
    it { should be_running }
  end

  describe port(6379) do
    it { should be_listening }
  end
end
