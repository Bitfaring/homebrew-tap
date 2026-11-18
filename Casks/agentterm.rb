cask "agentterm" do
  version "0.10.0"
  sha256 "34f260fe18fab67020f5108eb11bfb1c7e2637e68d22b69a8bfd8a944ec43372"

  url "https://github.com/manhpham90vn/AgentTerm/releases/download/v#{version}/AgentTerm-#{version}.dmg"
  name "AgentTerm"
  desc "Terminal for coding agents, with an iPhone remote"
  homepage "https://github.com/manhpham90vn/AgentTerm"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "AgentTerm.app"

  uninstall quit: "com.manhpham.agentterm"

  zap trash: [
    "~/Library/Application Support/AgentTerm",
    "~/Library/Preferences/com.manhpham.agentterm.plist",
    "~/Library/Saved Application State/com.manhpham.agentterm.savedState",
  ]
end
