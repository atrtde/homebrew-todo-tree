# typed: false
# frozen_string_literal: true

class TodoTree < Formula
  desc "A CLI tool to find and display TODO-style comments in your codebase"
  homepage "https://github.com/alexandretrotel/todo-tree"
  version "0.4.2"
  license "GPL-3.0-or-later"

  on_macos do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-apple-darwin.tar.gz"
      sha256 "5b4e8b1ae1a804d784f703b49d26bb638bce0dae9cffaeadaced8dc5ac56aadd"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-apple-darwin.tar.gz"
      sha256 "5503d236b08ea724a1c59f360bea8208865910a71c67e1d38ba58d37631eb716"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-aarch64-unknown-linux-gnu.tar.gz"
      sha256 "e4c4cef919d55a9306ffca9a9efeb436c74344ce9ecfc167fae0f4b359cc98e1"
    end

    on_intel do
      url "https://github.com/alexandretrotel/todo-tree/releases/download/todo-tree-v#{version}/todo-tree-x86_64-unknown-linux-gnu.tar.gz"
      sha256 "77e87d802cde0c41b06c23a2ed476e23f3b66181fbb6f8d76739391f09dc2b76"
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
