require 'rubygems'

task :default => :test

desc 'Remove all generated files'
task :clean => :clobber

desc 'Run all tests'
task :test => ['test:sanity', 'test:integration']
