class Anchor < Formula
  desc "Zero-downtime deployment orchestrator — Terraform-style Blue/Green deploys"
  homepage "https://github.com/YOURNAME/deploy-orchestrator"
  url "https://github.com/YOURNAME/deploy-orchestrator/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "PASTE_YOUR_SHA256_HERE"
  license "MIT"

  depends_on "python@3.11"

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match "0.1.0", shell_output("#{bin}/anchor --version")
  end
end