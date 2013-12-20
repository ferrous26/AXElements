require 'rubygems'
require 'simplecov'

require 'test/fixture_app' # must be loaded before minitest
require 'minitest/autorun'

# preprocessor powers, assemble!
if ENV['BENCH']
  require 'minitest/benchmark'
else
  require'minitest/pride'
end

class MiniTest::Unit::TestCase

  def self.bench_range
    bench_exp 100, 100_000
  end

end

$LOAD_PATH << File.expand_path('../../lib', __FILE__)

