cask "metashape" do
  version "2.1.4"
  sha256 "ce882ddf0d0c9409c208f084ad48c629d7aef499530636540dea2d89fc0f5611"

  url "https://download.agisoft.com/metashape_#{version.dots_to_underscores}.dmg"
  name "Agisoft Metashape Standard Edition"
  desc "Process digital images and generate 3D spatial data"
  homepage "https://www.agisoft.com/"

  livecheck do
    url "https://www.agisoft.com/downloads/installer/"
    regex(/Metashape\s*(\d+(?:\.\d+)+)/i)
  end

  app "Metashape.app"

  zap trash: [
    "~/Library/Preferences/com.agisoft.Metashape.plist",
    "~/Library/Saved Application State/com.agisoft.metashape.standard.savedState",
  ]
end
