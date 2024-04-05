cask "freifunk-meet" do
  version "2024.3.0"
  sha256 "7eb824e59bd72c1cb9c56e3ee0570e53ced8bdcdc7d15fa6dcc7d24ec0b3c754"

  url "https://github.com/freifunkMUC/jitsi-meet-electron/releases/download/v#{version}/ffmuc-meet.dmg"
  appcast "https://github.com/FreifunkMUC/jitsi-meet-electron/releases.atom"
  name "FreifunkMeet"
  homepage "https://github.com/FreifunkMUC/jitsi-meet-electron"

  app "FreifunkMeet.app"

  zap trash: [
                "~/Library/Application Support/FreifunkMeet",
                "~/Library/Logs/FreifunkMeet",
             ]
end
