class Dotagents < Formula
  desc "CLI to manage and template configuration files for AI agents"
  homepage "https://github.com/soorya-u/dotagents"
  version "0.1.0"

  on_macos do
    on_arm do
      url "https://github.com/soorya-u/dotagents/releases/download/v#{version}/dotagents-macos-arm64"
      sha256 "0913009c42df534a46e31f5a104911b521ae723c46d70314ff46cf91a0ec1307"
    end
    on_intel do
      url "https://github.com/soorya-u/dotagents/releases/download/v#{version}/dotagents-macos-x86"
      sha256 "e2cdaa0758244d53a3144738737d0cd04f45669b241022d2ea983bfeb024ece6"
    end
  end

  def install
    bin.install Dir["dotagents*"].first => "dotagents"
  end

  test do
    system "#{bin}/dotagents", "--version"
  end
end
