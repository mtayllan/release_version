require "test_helper"

class ReleaseVersionTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::ReleaseVersion::VERSION
  end

  def test_that_it_correctly_calculate_the_next_release_version
    today = Date.today.strftime("%Y.%m.%d")
    yesterday = (Date.today - 1).strftime("%Y.%m.%d")

    assert ::ReleaseVersion.next_release_version, "#{today}-1"
    assert ::ReleaseVersion.next_release_version("#{today}-1"), "#{today}-2"
    assert ::ReleaseVersion.next_release_version("#{today}-2"), "#{today}-3"
    assert ::ReleaseVersion.next_release_version("#{yesterday}-5"), "#{today}-1"
  end
end
