cask "ade" do
  version "1.2.0"
  sha256 "978998fa2d2b4af5333a9d5da728265492d2ffbd8ad1beadd979715ce091befb"

  url "https://github.com/arul28/ADE/releases/download/v#{version}/ADE-#{version}-universal.dmg"
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
