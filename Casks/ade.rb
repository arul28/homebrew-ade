cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.87"
  sha256 arm: "19d5bc668770255880f763ba8dc62d3a478c0c61ac62c92015f978c994c6dbd4", intel: "1234c34ea314ca7f199a1c4dd49c4b1f26f147a85ce8dbc9a189a9b19e950aa0"

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
