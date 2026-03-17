# typed: false
# frozen_string_literal: true

class TodoTree < Formula
  desc "A CLI tool to find and display TODO-style comments in your codebase"
  homepage "https://github.com/alexandretrotel/todo-tree"
  version "0.5.0"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 "d9aa085143e101534c53095beb5d30cc8f4887bf08a052255e30c1f42a729cc9"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 "aa1cb4e1aa83c31cfe20dfc340817ed98e1cd85269cae2cfc8aaa92ca2b5e883"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "00157c6a406b124ff0a3cec3959b5cbd329d4b6924679beb1ada95ed53dc1233"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "302803fa79dec2ea0f9b8d701e251dbac98451940d1a6709bb0d583595c0f453"
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
