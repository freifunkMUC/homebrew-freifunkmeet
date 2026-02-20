cask "freifunk-meet" do
  version "2025.1.1"
  sha256 "c86147b7b01cf4a860b324c6a9c0d57a5363abbab99a13e92de56e6d7e300fe5"

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
