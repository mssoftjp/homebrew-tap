cask "lazyspace" do
  version "0.5.0"
  sha256 "9d7563cde6346d4438411c9dcd90b5f983ed636d4ee273f1aaec0faac31462c8"

  url "https://github.com/mssoftjp/LazySpace/releases/download/v#{version}/LazySpace-#{version}-arm64.dmg"
  name "LazySpace"
  desc "Automatic window tiling within the existing Spaces"
  homepage "https://github.com/mssoftjp/LazySpace"

  auto_updates true
  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "LazySpace.app"
  binary "#{appdir}/LazySpace.app/Contents/Resources/bin/lazyspace"

  uninstall quit: "jp.lazyspace.app"

  zap trash: [
    "~/.config/lazyspace",
    "~/Library/Application Support/LazySpace",
    "~/Library/Caches/jp.lazyspace.app.sparkle",
    "~/Library/Preferences/jp.lazyspace.app.plist",
  ]

  caveats do
    <<~EOS
      Open LazySpace and turn it on in System Settings > Privacy & Security >
      Device Control and Data Access (Accessibility before macOS 27).
      Use the menu bar's Check Windows… command to check access and window eligibility.
    EOS
  end
end
