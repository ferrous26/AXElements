require 'rubygems'
require 'simplecov'

require 'test/fixture_app' # must be loaded before minitest

gem 'minitest', '> 5.0'

require 'minitest/autorun'
require 'minitest/pride'
require 'minitest/gcstats'
require 'minitest/benchmark' if ENV['BENCH']

class Minitest::Test
end

class Minitest::Benchmark
  def self.bench_range
    bench_exp 100, 100_000
  end
end

$LOAD_PATH << File.expand_path('../../lib', __FILE__)
