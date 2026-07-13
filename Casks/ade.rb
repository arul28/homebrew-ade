cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.24"
  sha256 arm: "6a0480f04969d5d5c0dc439552e85e020a3a0a2c52358a1b3e2eaa1a27bc1d68", intel: "a0b7ba9c0ae10d133b1f3f8f2370fd0e243eaa1440cfc0958f491899f8250c29"

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
