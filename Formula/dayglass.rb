class Dayglass < Formula
  desc "Local-first work-time evidence and reporting for macOS"
  homepage "https://github.com/Gigooo-organization/dayglass"
  url "https://github.com/Gigooo-organization/dayglass/archive/refs/tags/v0.1.3.tar.gz"
  sha256 "ccdd7ab5dd89c62ad56eb6b645122a28213faa8ec987aba8557935f279b1b516"
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
