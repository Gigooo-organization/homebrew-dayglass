class Dayglass < Formula
  desc "Local-first work-time evidence and reporting for macOS"
  homepage "https://github.com/Gigooo-organization/dayglass"
  url "https://github.com/Gigooo-organization/dayglass/archive/refs/tags/v0.1.1.tar.gz"
  version "0.1.1"
  sha256 "534d513fa43e3d1b2e6940371462cac77d22e25826ca26b66763e7ca12ae6746"
  license "MIT"

  depends_on "gh"
  depends_on arch: :arm64
  depends_on macos: :ventura

  def install
    system "swift", "build", "--disable-sandbox", "-c", "release"
    bin.install Dir[".build/**/release/dayglass"].first
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/dayglass --version")
  end
end
