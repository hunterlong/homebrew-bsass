class Statup < Formula
  homepage 'https://github.com/hunterlong/bsass'
  desc "bsass is much like the normal sass"
  homepage "https://github.com/hunterlong/bsass"
  version "0.12"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/bsass/releases/download/v0.12/bsass-osx-x64.tar.gz"
      sha256 "537753d867691c19f6ceaf396f551b644bf89e7c62b10f81ce0da680b0a4a311"
    else
      url "https://github.com/hunterlong/bsass/releases/download/v0.12/bsass-osx-x32.tar.gz"
      sha256 "4d9f0b2df88248d8e67f2bd79e3e70860e2643910ca2dd68d2ce65122340736a"
    end
  elsif OS.linux?
      if Hardware::CPU.is_64_bit?
        url "https://github.com/hunterlong/bsass/releases/download/v0.12/bsass-linux-x64.tar.gz"
        sha256 "bbdf2023a51219aba64f19cca5b35c70ccd559f3b83a665361b0eb5cb6068d4b"
      else
        url "https://github.com/hunterlong/bsass/releases/download/v0.12/bsass-linux-x32.tar.gz"
        sha256 "7c414042bfdf460ea9d981012be4daf33335dc2867e5622273bfcfda3351e4c1"
      end
  end

  def install
    bin.install "bsass"
  end

  test do
    system "#{bin}/bsass", "version"
  end

end
