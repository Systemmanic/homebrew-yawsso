class Yawsso < Formula
  include Language::Python::Virtualenv

  desc "Yet Another AWS SSO - sync up AWS CLI v2 SSO login session to legacy CLI v1 credentials"
  homepage "https://github.com/victorskl/yawsso"
  url "https://github.com/victorskl/yawsso/archive/refs/tags/0.7.2.tar.gz"
  sha256 "bb3cc0fc3732e586d8ee735d0d8feb6e5eb26864697e84db77c69e3fa0906f56"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin / "yawsso -h"
  end
end
