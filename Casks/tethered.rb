cask "tethered" do
  version "1.2.7"
  sha256 "8ccef866b012255e284c1710b3b3f54f91f455bcfa99c97cbff8f5ca7b3039f3"


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


