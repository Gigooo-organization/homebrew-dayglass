class Dayglass < Formula
  desc "Local-first work-time evidence and reporting for macOS"
  homepage "https://github.com/Gigooo-organization/dayglass"
  url "https://github.com/Gigooo-organization/dayglass/archive/refs/tags/v0.1.2.tar.gz"
  sha256 "24fa4df7c9914fa14c12c234c1a3587726ffe73b63280bd674f4011577d6e5cc"
  license "MIT"

  depends_on arch: :arm64
  depends_on "gh"
  depends_on macos: :ventura

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install Dir[".build/**/release/dayglass"].first
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dayglass --version")
  end
end
