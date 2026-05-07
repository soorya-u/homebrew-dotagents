class Dotagents < Formula
  desc "CLI to manage and template configuration files for AI agents"
  homepage "https://github.com/soorya-u/dotagents"
  version "0.0.0"

  on_macos do
    on_arm do
      url "https://github.com/soorya-u/dotagents/releases/download/v#{version}/dotagents-macos-arm64"
      sha256 "PLACEHOLDER_SHA256_MACOS_ARM64"
    end
    on_intel do
      url "https://github.com/soorya-u/dotagents/releases/download/v#{version}/dotagents-macos-x86"
      sha256 "PLACEHOLDER_SHA256_MACOS_X86"
    end
  end

  def install
    bin.install Dir["dotagents*"].first => "dotagents"
  end

  test do
    system "#{bin}/dotagents", "--version"
  end
end
