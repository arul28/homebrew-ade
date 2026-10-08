cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.96"
  sha256 arm: "b973e447ec57e33c7b2ca14080996c6fcf97b5622f6b552f9f8f4edddbe48a02", intel: "8210bb6da18cf233430c48c339245f5b63ab3bc6bd716e0fdd38aa7c46da49e6"

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
