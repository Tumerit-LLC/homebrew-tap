cask "tethered" do
  version "1.2.4"
  sha256 "91dd7866452ef8de83aad6ce168edc93807b3819c24d54c7c42368b80b7479d6"


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


