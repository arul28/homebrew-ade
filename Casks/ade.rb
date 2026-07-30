cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.45"
  sha256 arm: "354c71bc938f3778cd0d67d9e929c851c89c4b779359f3b59029bcaf9f973ef0", intel: "f144c6e983c0a3d5f1b31d4f957a317b2b24da94c356ed89c8f54506164ba203"

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
