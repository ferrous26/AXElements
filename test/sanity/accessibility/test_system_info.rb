require 'test/helper'
require 'accessibility/system_info'

class TestAcessibilitySystemInfo < Minitest::Test

  def test_name
    name = Accessibility::SystemInfo.name
    assert_kind_of String, name
    refute_empty name
  end

  def test_hostnames
    names = Accessibility::SystemInfo.hostnames
    assert_kind_of Array, names
    assert_kind_of String, names.first
    names.each { |name| refute_empty name }
  end

  def test_hostname
    name = Accessibility::SystemInfo.hostname
    assert_kind_of String, name
    refute_empty name
    assert_includes Accessibility::SystemInfo.hostnames, name
  end

  def test_addresses
    addresses = Accessibility::SystemInfo.addresses
    assert_kind_of Array, addresses
    assert_kind_of String, addresses.first
    addresses.each { |addr| refute_empty addr }
  end

  def test_ipv4_addresses
    addresses = Accessibility::SystemInfo.ipv4_addresses
    assert_kind_of Array, addresses
    assert_kind_of String, addresses.first, "Do you have IPv4 disabled?"
    home = addresses.find { |addr| addr.match(/127.0.0.1/) }
    refute_nil home
  end

  def test_ipv6_addresses
    addresses = Accessibility::SystemInfo.ipv6_addresses
    assert_kind_of Array, addresses
    assert_kind_of String, addresses.first, "Do you have IPv6 disabled?"
    home = addresses.find { |addr| addr.match(/::1/) }
    refute_nil home
  end

  def test_model
    model = Accessibility::SystemInfo.model
    assert_kind_of String, model
    refute_empty model
    # this assuming that all Macs have Mac in the model name
    assert_match /Mac/, model
  end

  def test_osx_version
    version = Accessibility::SystemInfo.osx_version
    assert_kind_of String, version
    refute_empty version
    assert_match /^Version 10\.\d+(\.\d*)? \(Build [\dA-Za-z]+\)$/, version
  end

  def test_uptime
    time = Accessibility::SystemInfo.uptime
    assert_kind_of Float, time
    assert time > 0.0
  end

  def test_num_processors
    procs = Accessibility::SystemInfo.num_processors
    assert_kind_of Fixnum, procs
    assert procs > 0
    assert_equal Accessibility::SystemInfo.number_of_processors, procs
  end

  def test_num_active_processors
    procs = Accessibility::SystemInfo.num_active_processors
    assert_kind_of Fixnum, procs
    assert procs > 0
    assert_equal Accessibility::SystemInfo.number_of_active_processors, procs
  end

  def test_total_ram
    ram = Accessibility::SystemInfo.total_ram
    assert_kind_of Fixnum, ram
    assert ram > 2.gigabytes # everyone has more than 2GB of RAM these days...right?
    assert_equal Accessibility::SystemInfo.ram, ram
  end

  def test_battery_state
    state = Accessibility::SystemInfo.battery_state
    assert_kind_of Symbol, state
  end

  def test_battery_charge_level
    level = Accessibility::SystemInfo.battery_level
    assert_kind_of Float, level
    assert level <= 1.0 && level >= -1.0
    assert_equal Accessibility::SystemInfo.battery_charge_level, level
  end

  def test_battery_life_estimate
    est = Accessibility::SystemInfo.battery_life_estimate
    assert_kind_of Fixnum, est
    assert est >= -1
  end

end
