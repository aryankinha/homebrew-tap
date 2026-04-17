class Anchorctl < Formula
  desc "Zero-downtime deployment orchestrator — Terraform-style Blue/Green deploys with automated rollback"
  homepage "https://github.com/aryankinha/anchor"
  url "https://github.com/aryankinha/anchor/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "af1e17a11087f4d886b8e880e54c22a046599960898374186dc786d19b4bafa4"
  license "MIT"

  depends_on "python@3.11"

  resource "click" do
    url "https://files.pythonhosted.org/packages/click-8.1.8.tar.gz"
    sha256 "ed53c9d8821d2d4a0d89c55ab4f2de49945db9b3e023b91b5fcba8e5b5cd80f0"
  end

  resource "httpx" do
    url "https://files.pythonhosted.org/packages/httpx-0.28.1.tar.gz"
    sha256 "75e98c5f16b0f35b567856f597f06ff2270a374470a5c2392242528e3e3e42fc"
  end

  resource "pyyaml" do
    url "https://files.pythonhosted.org/packages/PyYAML-6.0.2.tar.gz"
    sha256 "d584d9ec91ad65861cc08d42e834324ef890a082e591037abe114850ff7bbc3e"
  end

  def install
    virtualenv_install_with_resources
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/anchorctl --version")
  end
end
