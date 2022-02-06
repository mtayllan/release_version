require "release_version/version"
require "date"

module ReleaseVersion
  class Error < StandardError; end

  TODAY = Date.today.strftime("%Y.%m.%d").freeze
  INITIAL_RELEASE = "1".freeze

  def self.next_release_version(release_version = nil)
    return "#{TODAY}-#{INITIAL_RELEASE}" unless release_version

    date, release = release_version.split("-")
    release = date == TODAY ? release.to_i + 1 : INITIAL_RELEASE

    "#{TODAY}-#{release}"
  end
end
