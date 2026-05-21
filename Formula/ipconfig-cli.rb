class IpconfigCli < Formula
  desc "CLI for the ipconfig IP geolocation service"
  homepage "https://ipconfig.site"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/FutureDevSolutions/ipconfig-cli/releases/download/v0.1.1/ipconfig-0.1.1-macos-aarch64.tar.gz"
      sha256 "234d76efa92951077b4717b0e48bd9443fb189a90b34a1653aefa78af9a1941d"
    end
    on_intel do
      url "https://github.com/FutureDevSolutions/ipconfig-cli/releases/download/v0.1.1/ipconfig-0.1.1-macos-x86_64.tar.gz"
      sha256 "0683bf745fe746a5350163f7f1e4d441e52cbbbfee1087f39669d54178c7a0a3"
    end
  end

  on_linux do
    on_intel do
      url "https://github.com/FutureDevSolutions/ipconfig-cli/releases/download/v0.1.1/ipconfig-0.1.1-linux-x86_64.tar.gz"
      sha256 "4e216527c4b0e49b9ec4d8271398b15be58b2f1ac3ab2e420d6a7e9b3340252e"
    end
  end

  def install
    bin.install "ipconfig"
  end

  test do
    system "#{bin}/ipconfig", "--version"
  end
end
