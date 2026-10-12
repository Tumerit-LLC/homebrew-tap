cask "tethered" do
  version "1.2.0"
  sha256 "2eb8c3ec3377e61bc41930b2cbccef3a8e340110d9951738d1b2ea7534cb1b1c"


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


