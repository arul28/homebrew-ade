cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.10"
  sha256 arm: "1e7f0f21975a5c90cc51e5e3a5ec96d151be0516b6ec91684642c48a71365679", intel: "1de780c8d01f3e2e10e6e472f0a72bcdc8ff1b4a9be82aceb8c82606898ec9cc"

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
