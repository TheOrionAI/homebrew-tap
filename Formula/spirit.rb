# Formula for SPIRIT - State Preservation & Identity Resurrection Infrastructure Tool
# https://github.com/TheOrionAI/spirit
class Spirit < Formula
  desc "CLI tool that preserves AI agent state and enables resurrection on new servers"
  homepage "https://github.com/TheOrionAI/spirit"
  version "0.1.0"
  license "MIT"

  on_macos do
    if Hardware::CPU.intel?
      url "https://github.com/TheOrionAI/spirit/releases/download/v0.1.0/spirit_0.1.0_darwin_amd64.tar.gz"
      sha256 "f7e07571d91954a624c15f3d36df5b912a53b8bb91bac1ad7742d7e928c0747f"
    else
      url "https://github.com/TheOrionAI/spirit/releases/download/v0.1.0/spirit_0.1.0_darwin_arm64.tar.gz"
      sha256 "52605eb15c229e253e9283db336a493805f7dd51ef80414858a47751f07b38a3"
    end
  end

  on_linux do
    if Hardware::CPU.intel?
      url "https://github.com/TheOrionAI/spirit/releases/download/v0.1.0/spirit_0.1.0_linux_amd64.tar.gz"
      sha256 "07e62d944ff2b70fe93fcded0f9ef737f1254ac2b0326e8b2a72119115509d42"
    else
      url "https://github.com/TheOrionAI/spirit/releases/download/v0.1.0/spirit_0.1.0_linux_arm64.tar.gz"
      sha256 "2b8171e44c16bd20c67b9cfddc2e6540bdb87d874321ccf267361a979e9f4c7f"
    end
  end

  def install
    bin.install "spirit"
  end

  def caveats
    <<~EOS
      🌌 SPIRIT has been installed!

      Quick start:
        spirit init --name="my-agent" --emoji="🤖"
        cd ~/.spirit && git remote add origin https://github.com/USER/REPO.git
        spirit sync

      Documentation: https://github.com/TheOrionAI/spirit#readme
    EOS
  end

  test do
    assert_match "SPIRIT v0.1.0", shell_output("#{bin}/spirit --version")
  end
end
