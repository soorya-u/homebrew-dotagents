class DotagentsRc < Formula
  desc "CLI to manage and template configuration files for AI agents (RC)"
  homepage "https://github.com/soorya-u/dotagents"
  version "0.0.0-rc.1"

  on_macos do
    on_arm do
      url "https://github.com/soorya-u/dotagents/releases/download/v#{version}/dotagents-macos-arm64"
      sha256 "fcfe441f774df132a545b53a071fdb12568aa9c1f353a6c5fd8bcd528efb83e6"
    end
    on_intel do
      url "https://github.com/soorya-u/dotagents/releases/download/v#{version}/dotagents-macos-x86"
      sha256 "30792307611913002b5ddbcde4d17119d25dcbfef75d2a74c7053452ef29fb5e"
    end
  end

  def install
    bin.install Dir["dotagents*"].first => "dotagents"
  end

  test do
    system "#{bin}/dotagents", "--version"
  end
end
