cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.112"
  sha256 arm: "8fe36bf0eebf6c06ea4d39ab50d9387aa8b7f2246821a28c678c06e9cdd73f8b", intel: "ff24e629c53884afcf5e1b7cb3b88eac216930cb832365b0ac04efc9b585ded8"

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
