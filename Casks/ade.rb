cask "ade" do
  arch arm: "arm64", intel: "x64"

  version "1.2.84"
  sha256 arm: "96fdd8d8b652923fe65ff3fd69aeb0808c425563209f61a6e49385e2174a56a9", intel: "82220e2f7c3c63f4743ff6ec264ef35ffc3bb1826e05914f74406f5aab9b3071"

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
