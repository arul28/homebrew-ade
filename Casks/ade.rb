cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.35"
  sha256 arm: "e05540faa1ee3b6b7d4b4c252cb67283a9e9bd1592ab3ee3ea5fb22a633f1b9c", intel: "f9ff75ea9126d02da0fa5bfd50395a093c1872ef3be5550c6d03ea3f40095229"

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
