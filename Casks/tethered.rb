cask "tethered" do
  version "1.2.6"
  sha256 "ed49d038196511b60dbd545549879282a03e0edf64de7edce365c412ead262b2"


  url "https://github.com/Tumerit-LLC/Tethered/releases/download/v#{version}/Tethered-#{version}.pkg",
      verified: "github.com/Tumerit-LLC/Tethered/"
  name "Tethered"
  desc "Battery and power management for Mac"
  homepage "https://www.tetheredmac.com/"


  depends_on macos: :sequoia


  pkg "Tethered-#{version}.pkg"


  uninstall launchctl: "com.Tumerit.Tethered.helper.12025",
            quit:      "com.Tumerit.Tethered",
            pkgutil:   "com.Tumerit.Tethered.installer",
            delete:    "/Applications/Tethered.app"
end


