cask "printhub" do
  version "0.1.0"
  sha256 "e8b380614bafbc3248d3c6155664f4af37a3f55a51dead8c58ce1ebceddfa88c"

  url "https://github.com/frankt2012/PrintHub/releases/download/v#{version}/PrintHub-#{version}.dmg"
  name "PrintHub"
  desc "Native macOS control room for Creality 3D printers"
  homepage "https://github.com/frankt2012/PrintHub"

  depends_on macos: ">= :sonoma"

  app "PrintHub.app"

  zap trash: [
    "~/Library/Application Support/PrintHub",
    "~/Library/Preferences/com.franktriolo.printhub.plist",
  ]
end
