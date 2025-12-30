class StemSplitter < Formula
  desc "AI-powered audio stem separation tool"
  homepage "https://github.com/gentij/stem-splitter-core"
  url "https://github.com/gentij/stem-splitter-core/archive/refs/tags/v1.1.2.tar.gz"
  sha256 "81bef9c14c38d63acc6d5ee7029b74c51796deb328176a6239d3979d0b030cc5"
  license any_of: ["MIT", "Apache-2.0"]
  head "https://github.com/gentij/stem-splitter-core.git", branch: "main"

  depends_on "rust" => :build

  def install
    system "cargo", "install",
      "--locked",
      "--path", ".",
      "--bin", "stem-splitter",
      "--root", prefix
  end

  test do
    system "#{bin}/stem-splitter", "--version"
  end
end

