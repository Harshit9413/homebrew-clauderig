class Clauderig < Formula
  desc "My awesome CLI tool"
  homepage "https://github.com/harshit9413/clauderig"
  version "1.0.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/harshit9413/clauderig/releases/download/v#{version}/clauderig_#{version}_macos_arm64.zip"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    else
      url "https://github.com/harshit9413/clauderig/releases/download/v#{version}/clauderig_#{version}_macos_x86_64.zip"
      sha256 "0000000000000000000000000000000000000000000000000000000000000000"
    end
  end

  bottle :unneeded

  def install
    bin.install "clauderig"
  end

  test do
    assert_predicate bin/"clauderig", :exist?
  end

end
