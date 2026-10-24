cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.122"
  sha256 arm: "6d8cadddec77769044fa100de08bf0f74aebe5eb1756ac6c55de0c0a5dd1a605", intel: "81f762ceb7a5dee2854d681c078b2ae0d91f3c0d11e876e7bb87f3a93319eae3"

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
