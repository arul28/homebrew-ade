cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.36"
  sha256 arm: "a623dcbfa7bec7ddc13253d7c143c1cd4856e3e9ba444b867fe1fc820de9a1fe", intel: "fb3456d1cb8ebeb1c2c05dc8fcd66f92c7d2627f9f6f2ce64210834e0bceced3"

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
