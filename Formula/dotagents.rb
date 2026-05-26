class Dotagents < Formula
  desc "CLI to manage and template configuration files for AI agents"
  homepage "https://github.com/soorya-u/dotagents"
  version "0.1.1"

  on_macos do
    on_arm do
      url "https://github.com/soorya-u/dotagents/releases/download/v#{version}/dotagents-macos-arm64"
      sha256 "365f57a134583a0804314aa29351135949c5fad77c15a9b9c00973f597aff68d"
    end
    on_intel do
      url "https://github.com/soorya-u/dotagents/releases/download/v#{version}/dotagents-macos-x86"
      sha256 "6139b7df8f998dd32b63af8e97eacfbb60f0a4b04b683af78cdf0a8848c0d095"
    end
  end

  def install
    bin.install Dir["dotagents*"].first => "dotagents"
  end

  test do
    system "#{bin}/dotagents", "--version"
  end
end
