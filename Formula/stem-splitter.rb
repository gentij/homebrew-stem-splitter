class StemSplitter < Formula
  desc "AI-powered audio stem separation tool"
  homepage "https://github.com/gentij/stem-splitter-core"
  url "https://github.com/gentij/stem-splitter-core/archive/refs/tags/v1.1.3.tar.gz"
  sha256 "3ab774cbdcd5f23ecf3ec3a5ad3a170a2b7a2a0fdcd2f84ff9fcefb1837f40aa"
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

