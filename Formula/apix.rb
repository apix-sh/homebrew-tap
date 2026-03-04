class Apix < Formula
  desc "API vault CLI"
  homepage "https://github.com/apix-sh/cli"
  url "https://github.com/apix-sh/cli/archive/refs/tags/v0.1.4.tar.gz"
  sha256 "adf72dbde29cf0a5add7c34a34a7ae915b466dbd8c7742352fe408dcf13a2506"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "apix", shell_output("#{bin}/apix --version")
  end
end
