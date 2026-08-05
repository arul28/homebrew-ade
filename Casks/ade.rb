cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.53"
  sha256 arm: "4ea818ac9d8decea0413cd8a82a56c2f2534fe6d196b8df5f10494db12f5e987", intel: "e0eb853c7d6a7e0ed3435d5fe9b60a236a2aa446c0eaa319c3542b5c2d479be3"

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
