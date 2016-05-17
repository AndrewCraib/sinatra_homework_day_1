require('minitest/autorun')
require_relative '../models/profile.rb'

class TestProfile < Minitest::Test

  def setup
    @profile = Profile.new("3 Argyle House", "Codebase","e13 zqf", "0131558030")
  end




  def test_address
    assert_equal("3 Argyle House", @profile.address)
  end

  def test_building
    assert_equal("Codebase", @profile.building)
  end

  def test_posecode
    assert_equal("e13 zqf", @profile.postcode)
  end

  def test_phone
    assert_equal("0131558030", @profile.phone)
  end

  def test_upcase
    assert_equal("E13 ZQF", @profile.postcode.upcase)
  end

  def test_camelcase
    assert_equal("CodeClan", @profile.camelcase)
  end

end

