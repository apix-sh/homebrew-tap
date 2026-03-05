class Apix < Formula
  desc "API vault CLI"
  homepage "https://github.com/apix-sh/cli"
  url "https://github.com/apix-sh/cli/archive/refs/tags/v0.1.5.tar.gz"
  sha256 "d26dea0af28637a0c4382a9aa70dcae8a5a6f9f76d766643c1da385f737b29e2"
  license "MIT"

  depends_on "rust" => :build

  def install
    system "cargo", "install", *std_cargo_args
  end

  test do
    assert_match "apix", shell_output("#{bin}/apix --version")
  end
end
