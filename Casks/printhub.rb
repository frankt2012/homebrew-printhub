cask "printhub" do
  version "0.2.0"
  sha256 "2657414982799480dc1dbe857a85a6098e6ef3346ff28b7c83aac076899c2ae9"

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
