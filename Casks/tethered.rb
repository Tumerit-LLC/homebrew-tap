cask "tethered" do
  version "1.2.3"
  sha256 "cb22ce27689e5b186e821585f3d0776b385f68af1655d776b98c380fb81ac86f"


  url "https://github.com/Tumerit/Tethered/releases/download/v#{version}/Tethered-#{version}.pkg",
      verified: "github.com/Tumerit/Tethered/"
  name "Tethered"
  desc "Battery and power management for Mac"
  homepage "https://www.tetheredmac.com/"


  depends_on macos: :sequoia


  pkg "Tethered-#{version}.pkg"


  uninstall launchctl: "com.Tumerit.Tethered.helper.10000",
            quit:      "com.Tumerit.Tethered",
            pkgutil:   "com.Tumerit.Tethered.installer",
            delete:    "/Applications/Tethered.app"
end


