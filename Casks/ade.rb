cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.47"
  sha256 arm: "e3ddc5b6481ce57c7dc76fd5841a6a94002c5e3571e80f3f4dd0a6e671ee7a26", intel: "ab3bb833a69e13410fe9c826ab53762afbb0cefa430e22d1eb214f60318b8b2d"

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
