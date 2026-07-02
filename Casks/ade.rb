cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.11"
  sha256 arm: "00b8632e456b3ea3b3ad066f8b3060534d9f1b4880fb5952fdc43b00536a3152", intel: "f98f774f2bfcddbb3020eba66f5de476df137b5aa2098cb9df0c0bf8cfaf8ff3"

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
