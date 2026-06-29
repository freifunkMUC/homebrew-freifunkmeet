cask "freifunk-meet" do
  version "2026.6.0"
  sha256 "9a87e6cbf7a58e6e425f8990f06b4cdf89e8868dbe4bbd13a42ee06fd816b81e"

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
