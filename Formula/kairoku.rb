class Kairoku < Formula
  desc "Set up the Kairoku Claude Code plugin and orchestration daemon"
  homepage "https://github.com/owds-inc/kairoku"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/owds-inc/kairoku/releases/download/v0.1.0/kairoku-darwin-arm64"
      sha256 "0986dda0ae1a4f8f61f49168d44cc1e4eb0ba1d704e55eb55a630e9cecce058f"
    end
    on_intel do
      url "https://github.com/owds-inc/kairoku/releases/download/v0.1.0/kairoku-darwin-x64"
      sha256 "5a530f953d917af4a19323b0786ea05b8c1d865d36f678a49d910d635b0e5f86"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/owds-inc/kairoku/releases/download/v0.1.0/kairoku-linux-arm64"
      sha256 "d8d804a54e47fdbd406f54af0283ce9c531c4f6573229c9a3945c22685f335d9"
    end
    on_intel do
      url "https://github.com/owds-inc/kairoku/releases/download/v0.1.0/kairoku-linux-x64"
      sha256 "86acae1a08f8a25d54f0180115d15a4e8e6035bbfcfcd463dcb44bbbeb9a290c"
    end
  end

  def install
    bin.install Dir["kairoku-*"].first => "kairoku"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kairoku version")
  end
end
