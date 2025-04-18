cask "calibre" do
  on_high_sierra :or_older do
    version "3.48.0"
    sha256 "68829cd902b8e0b2b7d5cf7be132df37bcc274a1e5720b4605d2dd95f3a29168"

    livecheck do
      skip "Legacy version"
    end
  end
  on_mojave do
    version "5.44.0"
    sha256 "89d7772ba1b95d219b34e285353340a174a013e06b4d8ad370433b3b98c94ad4"

    livecheck do
      skip "Legacy version"
    end
  end
  on_catalina do
    version "6.11.0"
    sha256 "d7c40f3f35ba9043c13303632526f135b2c4086471a5c09ceb8b397c55c076fa"

    livecheck do
      skip "Legacy version"
    end
  end
  on_big_sur do
    version "6.29.0"
    sha256 "2f76428ae19617875c5725cd892751a80eb2acdda76e06cd19c2f21a63966998"

    livecheck do
      skip "Legacy version"
    end
  end
  on_monterey do
    version "6.29.0"
    sha256 "2f76428ae19617875c5725cd892751a80eb2acdda76e06cd19c2f21a63966998"

    livecheck do
      skip "Legacy version"
    end
  end
  on_ventura do
    version "7.26.0"
    sha256 "6c329e20bc575fb2445b2279f1c9df73efecfd371a3864a35f1b575b87332ee4"

    livecheck do
      skip "Legacy version"
    end
  end
  on_sonoma :or_newer do
    version "8.3.0"
    sha256 "a13a298c41b7d8fd1e901a6c2320db0347d680507cd1a41ce2713df0838cdc2d"

    livecheck do
      url "https://calibre-ebook.com/dist/osx"
      strategy :header_match
    end
  end

  # Do not change this URL to the GitHub repo. Releases are removed from GitHub
  # after a new release, which breaks the cask. We have accepted that downloads
  # from the homepage may be slow for some users.
  # See https://github.com/Homebrew/homebrew-cask/pull/183664
  url "https://download.calibre-ebook.com/#{version}/calibre-#{version}.dmg"
  name "calibre"
  desc "E-books management software"
  homepage "https://calibre-ebook.com/"

  app "calibre.app"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-complete"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-customize"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-debug"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-parallel"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-server"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibre-smtp"
  binary "#{appdir}/calibre.app/Contents/MacOS/calibredb"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-convert"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-device"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-edit"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-meta"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-polish"
  binary "#{appdir}/calibre.app/Contents/MacOS/ebook-viewer"
  binary "#{appdir}/calibre.app/Contents/MacOS/fetch-ebook-metadata"
  binary "#{appdir}/calibre.app/Contents/MacOS/lrf2lrs"
  binary "#{appdir}/calibre.app/Contents/MacOS/lrfviewer"
  binary "#{appdir}/calibre.app/Contents/MacOS/lrs2lrf"
  binary "#{appdir}/calibre.app/Contents/MacOS/markdown-calibre"
  binary "#{appdir}/calibre.app/Contents/MacOS/web2disk"

  zap trash: [
    "~/Library/Application Support/calibre-ebook.com",
    "~/Library/Caches/calibre",
    "~/Library/Preferences/calibre",
    "~/Library/Preferences/com.calibre-ebook.ebook-viewer.plist",
    "~/Library/Preferences/net.kovidgoyal.calibre.plist",
    "~/Library/Saved Application State/com.calibre-ebook.ebook-viewer.savedState",
    "~/Library/Saved Application State/net.kovidgoyal.calibre.savedState",
  ]
end
