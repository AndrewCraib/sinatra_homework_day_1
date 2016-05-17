require('minitest/autorun')
require_relative '../models/wordformatter.rb'

class TestWordformatter < Minitest::Test

  def setup
    @wordformatter = Wordformatter.new("3 Argyle House", "Codebase","e13 zqf", "0131558030")
  end


  def test_posecode
    assert_equal("e13 zqf", @wordformatter.postcode)
  end

  def test_upcase
    assert_equal("E13 ZQF", @wordformatter.postcode.upcase)
  end

  def test_camelcase
    assert_equal("CodeClan", @wordformatter.camelcase)
  end

end
