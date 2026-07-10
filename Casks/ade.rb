cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.19"
  sha256 arm: "d5dac78e2766dc22f9b4cc7c508ec15aa2c4cacb82db97cf7a31e1122242c92b", intel: "d5eabcfa95e45bb39d44458d7444e402bca35e83a31e2c1bc74b23e5ce4a3969"

  url "https://github.com/arul28/ADE/releases/download/v#{version}/ADE-#{version}-#{arch}.dmg"
  name "ADE"
  desc "Agent development environment for orchestrating coding agents, lanes, and PRs"
  homepage "https://github.com/arul28/ADE"

  livecheck do
    url :url
    strategy :github_latest
  end

  auto_updates true
  depends_on macos: :ventura

  app "ADE.app"

  zap trash: [
    "~/Library/Application Support/ADE",
    "~/Library/Caches/com.ade.desktop",
    "~/Library/Caches/com.ade.desktop.ShipIt",
    "~/Library/LaunchAgents/com.ade.runtime.plist",
    "~/Library/Preferences/com.ade.desktop.plist",
    "~/Library/Saved Application State/com.ade.desktop.savedState",
  ]
end
