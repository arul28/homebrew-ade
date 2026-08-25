cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.64"
  sha256 arm: "0927fc2e9dc617a2a5938e8a7ac06a50894613937d8406fb2998c41f378ca9bc", intel: "b46f5b8ae01b686ef79a7ecaa5ccc79960e0b71c773401dc9c3c40fde81b991f"

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
