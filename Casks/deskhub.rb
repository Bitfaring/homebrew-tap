cask "deskhub" do
  version "9.4.1"
  sha256 "8ef7681e6b365abc30ad2fb54a07e00bf6e83e792f6f44249c9bc147beccde0b"

  url "https://github.com/Bitfaring/Deskhub/releases/download/v#{version}/deskhub-v#{version}-macos.dmg"
  name "Deskhub"
  desc "LAN remote desktop - share and control screens"
  homepage "https://github.com/Bitfaring/Deskhub"

  depends_on macos: ">= :sonoma"

  app "Deskhub.app"
  binary "#{appdir}/Deskhub.app/Contents/MacOS/deskhub-cli"

  uninstall launchctl: [
    "com.deskhub.macos.daemon",
    "com.deskhub.macos.unattended",
  ]

  zap trash: [
    "~/.deskhub",
    "/Library/Application Support/Deskhub",
    "/Library/LaunchAgents/com.deskhub.macos.unattended.plist",
  ]
end
