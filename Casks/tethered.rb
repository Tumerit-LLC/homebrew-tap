cask "tethered" do
  version "1.0.1"
  sha256 "14293c038a18e01063d563e0752eb9ce16c3eb9c65a9e6ff4bb5bd5112888bc0"


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


