cask "deskhub" do
  version "9.4.0"
  sha256 "459abf63f16a9abb09f60d27ac2701efc3a1d387b144b303110d21514c4d5caa"

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
