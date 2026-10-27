class Dayglass < Formula
  desc "Local-first work-time evidence and reporting for macOS"
  homepage "https://github.com/Gigooo-organization/dayglass"
  url "https://github.com/Gigooo-organization/dayglass/archive/refs/tags/v0.6.0.tar.gz"
  sha256 "0cf41687bcd579d520a6ade5c894e5b5791a1c5c113986ea49ad7db09070dbd6"
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
