require 'bundler/gem_tasks'

task :install => :setup

desc 'Install AXElements dependencies'
task :setup do
  sh 'bundle install'
end

desc 'Install AXElements development dependencies'
task :setup_dev => :setup

