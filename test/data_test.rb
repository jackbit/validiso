require "test/unit"
require 'validiso'

class DataTest < Test::Unit::TestCase
  def test_file_is_exist
    assert_nothing_raised { Validiso::Data.read_data_file }
  end

  def test_json_is_array
    assert_equal Validiso::Data.json.class.name, 'Array'
  end

  def test_first_json_is_hash
    assert_equal Validiso::Data.json[0].class.name, 'Hash'
  end

  def test_codes_is_hash
    assert_equal Validiso::Data.codes.class.name, 'Hash'
  end

  def test_codes_is_alpha2
    assert_equal Validiso::Data.alpha2.class.name, 'Hash'
  end

  def test_codes_is_alpha3
    assert_equal Validiso::Data.alpha3.class.name, 'Hash'
  end

  def test_codes_with_971_is_not_nil
    assert_not_nil Validiso::Data.codes['971']
  end

  def test_alpha3_with_AU_is_not_nil
    assert_not_nil Validiso::Data.alpha3['AUS']
  end
end