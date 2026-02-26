class Vnxt < Formula
  desc "Automated semantic version bumping CLI tool with changelog generation and git integration"
  homepage "https://vnxt.dev"
  url "https://registry.npmjs.org/vnxt/-/vnxt-1.15.0.tgz"
  version "1.15.0"
  license "MIT"

  depends_on "node"

  def install
    system "npm", "install", "-g", "vnxt@#{version}",
           "--prefix", prefix,
           "--ignore-scripts"
  end

  test do
    assert_match "vnxt v#{version}", shell_output("#{bin}/vx -vv")
  end
end
