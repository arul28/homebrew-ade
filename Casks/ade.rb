cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.78"
  sha256 arm: "c98403280610bf05bbf6b3a3b0fe82ddc52233ffec4a65131e8c376069e8f46a", intel: "f474c9903137ccedf3503d4ec9f87c48d8fdb1ec0cdcb94e09c3fe3862ecb429"

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
