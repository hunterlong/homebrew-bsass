class Bsass < Formula
  homepage 'https://github.com/hunterlong/bsass'
  desc "bsass is much like the normal sass"
  homepage "https://github.com/hunterlong/bsass"
  version "0.15"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/bsass/releases/download/v0.15/bsass-osx-x64.tar.gz"
      sha256 "704c9349000911f5f69fd3dc2578f1a44c43b1b163761091d5283b935fdf310f"
    else
      url "https://github.com/hunterlong/bsass/releases/download/v0.15/bsass-osx-x32.tar.gz"
      sha256 "7d81d5b4f69dac8b8835d404b281a34b4708aacec1c0291f16ac1ac0d321c79d"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/bsass/releases/download/v0.15/bsass-linux-x64.tar.gz"
        sha256 "64c5e2effe71d322ab49f83eb6bf7e1b51c2cbc7df65d07b1ec90b82e432735a"
      else
        url "https://github.com/hunterlong/bsass/releases/download/v0.15/bsass-linux-x32.tar.gz"
        sha256 "eb5950fb3ade6fff3d28a245850eb0482fd6377ab0d669d0fa5e29010190255f"
      end
  end

  def install
    bin.install "bsass"
  end

  test do
    system "#{bin}/bsass", "version"
  end

end
