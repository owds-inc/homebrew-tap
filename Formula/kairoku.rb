class Kairoku < Formula
  desc "Set up the Kairoku Claude Code plugin and orchestration daemon"
  homepage "https://github.com/owds-inc/kairoku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/owds-inc/kairoku/releases/download/v0.1.0/kairoku-darwin-arm64"
      sha256 "22d041aebff246dac574708a6c63c458d5f09de9ad4eb05c3eb780c419f89040"
    end
    on_intel do
      url "https://github.com/owds-inc/kairoku/releases/download/v0.1.0/kairoku-darwin-x64"
      sha256 "62db6c3e66d305035caa12bc0046b856d29a8242f92287f380bd8702911bbb3b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/owds-inc/kairoku/releases/download/v0.1.0/kairoku-linux-arm64"
      sha256 "e2399c3065acb060b819caf6d1b7e714f00eacb2bd45f350617d724ca5db8bff"
    end
    on_intel do
      url "https://github.com/owds-inc/kairoku/releases/download/v0.1.0/kairoku-linux-x64"
      sha256 "c8a2c8a5c953e49def7eff218daa3fe08088bc7c2281ad7e2091d44bc0169d72"
    end
  end

  def install
    bin.install Dir["kairoku-*"].first => "kairoku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kairoku version")
  end
end
