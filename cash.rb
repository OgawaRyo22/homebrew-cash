
REPOSITORY_URL="https://github.com/OgawaRyo22/cash".freeze
HOMEBREW_CASH_VERSION="0.0.1".freeze

class Cash < Formula
  desc "aaa"
  homepage REPOSITORY_URL
  url "#{REPOSITORY_URL}/archive/#{HOMEBREW_CASH_VERSION}.tar.gz"
  sha256 "38ed59c5bf299c228909ec3f733c0ef431e854377634bb293d696d4a8e702eeb"
  head "#{REPOSITORY_URL}.git", :tag => HOMEBREW_CASH_VERSION
  version "#{HOMEBREW_CASH_VERSION}"

  def install
    system "./configure", "--disable-debug",
                          "--disable-dependency-tracking",
                          "--disable-silent-rules",
                          "--prefix=#{prefix}"
  end

  test do
    system "false"
  end
end

