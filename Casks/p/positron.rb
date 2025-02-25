cask "positron" do
  version "2025.02.0-171"
  sha256 "6f9a35f945ede4902e1e49b52b58eb30b57eecf1df2894ce7dfe1a4e4f319b62"

  url "https://cdn.posit.co/positron/prereleases/mac/universal/Positron-#{version}.dmg"
  name "Positron"
  desc "Data science IDE"
  homepage "https://positron.posit.co/"

  livecheck do
    url "https://cdn.posit.co/positron/prereleases/mac/universal/releases.json"
    strategy :json do |json|
      json["version"]
    end
  end

  depends_on macos: ">= :catalina"

  app "Positron.app"

  zap trash: [
    "~/.positron",
    "~/Library/Application Support/Positron",
    "~/Library/Preferences/com.rstudio.positron.plist",
    "~/Library/Saved Application State/com.rstudio.positron.savedState",
  ]
end
