cask "printhub" do
  version "0.2.1"
  sha256 "9519939271e338749cde2e90788160ca5f48af337b446690e244e92757fed68b"

  url "https://github.com/frankt2012/PrintHub/releases/download/v#{version}/PrintHub-#{version}.dmg"
  name "PrintHub"
  desc "Native macOS control room for Creality 3D printers"
  homepage "https://github.com/frankt2012/PrintHub"

  depends_on macos: :sonoma

  app "PrintHub.app"

  zap trash: [
    "~/Library/Application Support/PrintHub",
    "~/Library/Preferences/com.franktriolo.printhub.plist",
  ]
end
