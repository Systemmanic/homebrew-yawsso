class Yawsso < Formula
  include Language::Python::Virtualenv

  desc "Yet Another AWS SSO - sync up AWS CLI v2 SSO login session to legacy CLI v1 credentials"
  homepage "https://github.com/victorskl/yawsso"
  url "https://github.com/victorskl/yawsso/archive/refs/tags/0.6.2.tar.gz"
  sha256 "e243f11b8e1aacee1c44abe3e011e601879269f6a5a3177dde336e15a1d0fa42"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin / "yawsso -h"
  end
end
