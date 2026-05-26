class Dotagents < Formula
  desc "CLI to manage and template configuration files for AI agents"
  homepage "https://github.com/soorya-u/dotagents"
  version "0.1.2"

  on_macos do
    on_arm do
      url "https://github.com/soorya-u/dotagents/releases/download/v#{version}/dotagents-macos-arm64"
      sha256 "b785dafcd8d3f912f1045abccb5022082b0ac195cd948bc1e2fbd3cbcd0c5c5c"
    end
    on_intel do
      url "https://github.com/soorya-u/dotagents/releases/download/v#{version}/dotagents-macos-x86"
      sha256 "c22a09723fd56069164575197748e664e8be443628107ab963bc6ebed0e02183"
    end
  end

  def install
    bin.install Dir["dotagents*"].first => "dotagents"
  end

  test do
    system "#{bin}/dotagents", "--version"
  end
end
