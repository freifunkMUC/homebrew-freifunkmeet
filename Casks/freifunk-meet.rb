cask "freifunk-meet" do
  version "2024.3.0"
  sha256 "7eb824e59bd72c1cb9c56e3ee0570e53ced8bdcdc7d15fa6dcc7d24ec0b3c754"

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
                "~/Library/Logs/FreifunkMeet",
                "~/Library/Caches/meet.ffmuc.net",
                "~/Library/Caches/meet.ffmuc.net.ShipIt",
                "~/Library/Preferences/meet.ffmuc.net.plist",
                "~/Library/Preferences/meet.ffmuc.net.helper.Plugin.plist",
                "~/Library/Saved Application State/meet.ffmuc.net.savedState",
             ]
end
