cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.83"
  sha256 arm: "9aced6e196a1f5d74b9c9006be1ca68fda97b112faf9512b60e6b3cfab6d8884", intel: "8262952a43b8935343a6b8835097badb601b8068feaa5503a5eecb4f57f02520"

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
