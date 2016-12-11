require "test/unit"
require 'validiso'

class CountriesTest < Test::Unit::TestCase
  def test_find_code
    assert_equal Validiso::Countries.find_code('971'), Validiso::Data.codes['971']
  end

  def test_find_alpha2
    assert_equal Validiso::Countries.find_alpha2('AU'), Validiso::Data.alpha2['AU']
  end

  def test_find_alpha3
    assert_equal Validiso::Countries.find_alpha3('AUS'), Validiso::Data.alpha3['AUS']
  end

  def test_find_invalid_alpha3
    assert_nil Validiso::Countries.find_alpha3('AUD')
  end

  def test_find_invalid_alpha2
    assert_nil Validiso::Countries.find_alpha2('XX')
  end

  def test_find_invalid_code
    assert_nil Validiso::Countries.find_code('000')
  end
  
end