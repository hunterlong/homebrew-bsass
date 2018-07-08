class Bsass < Formula
  desc "bsass is much like the normal sass"
  homepage 'https://github.com/hunterlong/bsass'
  version "0.23"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/bsass/releases/download/v0.23/bsass-osx-x64.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    else
      url "https://github.com/hunterlong/bsass/releases/download/v0.23/bsass-osx-x32.tar.gz"
      sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/bsass/releases/download/v0.23/bsass-linux-x64.tar.gz"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
      else
        url "https://github.com/hunterlong/bsass/releases/download/v0.23/bsass-linux-x32.tar.gz"
        sha256 "0019dfc4b32d63c1392aa264aed2253c1e0c2fb09216f8e2cc269bbfb8bb49b5"
      end
  end

  def install
    bin.install "bsass"
  end

  test do
    system "#{bin}/bsass", "version"
  end

end
