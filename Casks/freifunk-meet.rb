cask "freifunk-meet" do
  version "2026.1.1"
  sha256 "e471edd1aa0cdce382cbb62d2c5988e6bd0a20f37b0fb90e5cf173beba6c646a"

  url "https://github.com/freifunkMUC/jitsi-meet-electron/releases/download/v#{version}/ffmuc-meet.dmg"

  name "FreifunkMeet"
  homepage "https://github.com/FreifunkMUC/jitsi-meet-electron"

  auto_updates true
  livecheck do
    url "https://github.com/FreifunkMUC/jitsi-meet-electron/releases/latest"
    strategy :github_latest
  end

  app "FreifunkMeet.app"

  zap trash: [
                "~/Library/Application Support/Caches/ffmuc-meet-updater",
                "~/Library/Application Support/FreifunkMeet",
                "~/Library/Caches/meet.ffmuc.net",
                "~/Library/Caches/meet.ffmuc.net.ShipIt",
                "~/Library/HTTPStorages/meet.ffmuc.net",
                "~/Library/Logs/FreifunkMeet",
                "~/Library/Preferences/meet.ffmuc.net.plist",
                "~/Library/Preferences/meet.ffmuc.net.helper.Plugin.plist",
                "~/Library/Saved Application State/meet.ffmuc.net.savedState",
             ]
end
