class Bsass < Formula
  desc "Simplify the process of compiling scss to css"
  homepage 'https://github.com/hunterlong/bsass'
  version "0.16"
  if OS.mac?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/bsass/releases/download/v0.16/bsass-osx-x64.tar.gz"
      sha256 "adeb00b51ef1f69b4210b62e4aab1cebb90090260e424b53469a287b44d6484e"
    else
      url "https://github.com/hunterlong/bsass/releases/download/v0.16/bsass-osx-x32.tar.gz"
      sha256 "bce5bde42e5cd988a6747cfd336f23b50744c20218886293b560d8ea2d83ca58"
    end
  elsif OS.linux?
    if Hardware::CPU.is_64_bit?
      url "https://github.com/hunterlong/bsass/releases/download/v0.16/bsass-linux-x64.tar.gz"
      sha256 "a26eba4c6f498dbb76a388bdfacecbb4dd71f182c9261cd208c4878f4c24241b"
    else
      url "https://github.com/hunterlong/bsass/releases/download/v0.16/bsass-linux-x32.tar.gz"
      sha256 "db0edaa7e1579ecbf6bc236a2658e731582310948c5f68ae824819522c0fd133"
    end
  end

  def install
    bin.install "bsass"
  end

  test do
    system "#{bin}/bsass", "version"
  end

end
