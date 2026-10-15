cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.105"
  sha256 arm: "f260a0d86fe95297145011a37611a52f0731f86dc51d7fb9fa44fddbb8813ead", intel: "0b0fbf6ac40d8bfde7a4c3f9c9d6904925dbd6759b2ec6a9d262638a836b5323"

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
