cask "printhub" do
  version "0.2.1"
  sha256 "81b09cfd13afc7e5bdb61e798cf92d6ea4da61e7a83e991275660cf1a5ba3a73"

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
