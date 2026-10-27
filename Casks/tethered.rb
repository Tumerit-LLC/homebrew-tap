cask "tethered" do
  version "1.3.1"
  sha256 "19c3d06799df1301bc59d8705f3d20e7434aab8530170688668c177026c470f7"


  url "https://github.com/Tumerit-LLC/Tethered/releases/download/v#{version}/Tethered-#{version}.zip",
      verified: "github.com/Tumerit-LLC/Tethered/"
  name "Tethered"
  desc "Battery and power management for Mac"
  homepage "https://www.tetheredmac.com/"


  depends_on macos: :sequoia


  container nested: "Tethered-#{version}.dmg"

  app "\u200B.app", target: "Tethered.app"


  uninstall launchctl: "com.Tumerit.Tethered.helper.12025",
            quit:      "com.Tumerit.Tethered",
            pkgutil:   "com.Tumerit.Tethered.installer",
            delete:    "/Applications/Tethered.app"
end


