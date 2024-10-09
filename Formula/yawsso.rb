class Yawsso < Formula
  include Language::Python::Virtualenv

  desc "Yet Another AWS SSO - sync up AWS CLI v2 SSO login session to legacy CLI v1 credentials"
  homepage "https://github.com/victorskl/yawsso"
  url "https://github.com/victorskl/yawsso/archive/refs/tags/1.2.1.tar.gz"
  sha256 "019b1a4eef38a245ff8be72a60128afda81247021bbad92c0859a7a718115ad5"

  depends_on "python"

  def install
    virtualenv_install_with_resources
  end

  test do
    system bin / "yawsso -h"
  end
end
