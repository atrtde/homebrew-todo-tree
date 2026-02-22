# typed: false
# frozen_string_literal: true

class TodoTree < Formula
  desc "A CLI tool to find and display TODO-style comments in your codebase"
  homepage "https://github.com/atrtde/todo-tree"
  version "0.4.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/atrtde/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 "ff170975d8c7d8454d327a5fe90314d2ff690ac90a66d36e1e6fc9bc21977810"
    end

    on_intel do
      url "https://github.com/atrtde/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 "0157671e515b28cddc21d12b808cc76dffdafdf04a2ea6c6324f742fe3bfa24f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/atrtde/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "46341cae646e6dbe1ebd7f97c97f2d3be6905f472ed15deb109ec8d31de85006"
    end

    on_intel do
      url "https://github.com/atrtde/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "2155cb001477fb4be4f1d5fd68164f90cdc872009adbddef99b4c9c545b5d9af"
    end
  end

  def install
    bin.install "todo-tree"
    bin.install "tt"
  end

  test do
    system "#{bin}/todo-tree", "--version"
  end
end
