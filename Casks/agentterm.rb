cask "agentterm" do
  version "0.11.0"
  sha256 "d825de050db5aeb74ed3e4ecdf07ae83930a43369c32de11806b67b4ac405129"

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
