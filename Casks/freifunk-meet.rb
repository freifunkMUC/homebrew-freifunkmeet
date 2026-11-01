cask "freifunk-meet" do
  version "2026.10.100"
  sha256 "6f27fb977cf1d36b8016d82aa6bb4c2f8a49865812ff1932b62cd25d013e86db"

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
