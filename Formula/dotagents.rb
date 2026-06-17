class Dotagents < Formula
  desc "CLI to manage and template configuration files for AI agents"
  homepage "https://github.com/soorya-u/dotagents"
  version "0.1.3"

  on_macos do
    on_arm do
      url "https://github.com/soorya-u/dotagents/releases/download/v#{version}/dotagents-macos-arm64"
      sha256 "0a545a17383e17bfa4d8e4217c6d8d99dc856da8e281ae7c0bfd3a470c4fb5ae"
    end
    on_intel do
      url "https://github.com/soorya-u/dotagents/releases/download/v#{version}/dotagents-macos-x86"
      sha256 "febf6521411961a59388c5331130a3d4ca8fff124207e283adaf32863c48eee2"
    end
  end

  def install
    bin.install Dir["dotagents*"].first => "dotagents"
  end

  test do
    system "#{bin}/dotagents", "--version"
  end
end
