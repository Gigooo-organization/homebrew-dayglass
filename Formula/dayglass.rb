class Dayglass < Formula
  desc "Local-first work-time evidence and reporting for macOS"
  homepage "https://github.com/Gigooo-organization/dayglass"
  url "https://github.com/Gigooo-organization/dayglass/archive/refs/tags/v0.6.1.tar.gz"
  sha256 "e9fce55b4f2cbd59f99a3fb1504924acf68876d8f6ba519a888cba992e764ccf"
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
