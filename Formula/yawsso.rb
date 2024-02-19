class Yawsso < Formula
  include Language::Python::Virtualenv

  desc "Yet Another AWS SSO - sync up AWS CLI v2 SSO login session to legacy CLI v1 credentials"
  homepage "https://github.com/victorskl/yawsso"
  url "https://github.com/victorskl/yawsso/archive/refs/tags/1.1.0.tar.gz"
  sha256 "e1d3c064e943ad9509b3193c24e0a372794623ef362e03842af768a71e33f2b7"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin / "yawsso -h"
  end
end
