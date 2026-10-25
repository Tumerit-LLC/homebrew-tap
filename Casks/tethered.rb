cask "tethered" do
  version "1.3.0"
  sha256 "ad75dea2933ad8701aa83dcbf2cada15e3e8e112f842afa11ec5bc44a8db5b63"


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


