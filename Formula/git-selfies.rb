class GitSelfies < Formula
desc "Git-based selfies for software developers - a modern lolcommits alternative"
homepage "https://github.com/biw/git-selfies"
version "0.0.1"
license "MIT"

on_macos do
  if Hardware::CPU.arm?
    url "https://github.com/biw/git-selfies/releases/download/v0.0.1/git-selfies-macos-aarch64.tar.gz"
    sha256 "e1bb5fd41b93c08820c324657050f97eebbb67ddcd1c0a6b0bf913af1c57c109"
  else
    url "https://github.com/biw/git-selfies/releases/download/v0.0.1/git-selfies-macos-x86_64.tar.gz"
    sha256 "4245916ffdbaaf3e96105ed8df870fcbd625259867a25452c04232b88e61867d"
  end
end

on_linux do
  url "https://github.com/biw/git-selfies/releases/download/v0.0.1/git-selfies-linux-x86_64.tar.gz"
  sha256 "4268173a53c55cbdffe00a4b21d5e21b586df585d785fd04a9232fa206a0ac1d"
end

def install
  bin.install "git-selfies"
end

test do
  system "#{bin}/git-selfies", "--version"
end
end
