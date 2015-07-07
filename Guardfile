guard :rspec, cmd: "bundle exec rspec" do
  require 'guard/rspec/dsl'
  watch(Guard::RSpec::Dsl.new(self).rspec.spec_files)
  watch(%r{^Dockerfile$}) { 'spec/nacyot_redis_image_spec.rb' }
end
