cask "lazyspace" do
  version "0.4.1"
  sha256 "d8cac595ac0525416dc42add5f453ddf09a0044e0dca8e73ef053b70c3d093cc"

  url "https://github.com/mssoftjp/LazySpace/releases/download/v#{version}/LazySpace-#{version}-arm64.dmg"
  name "LazySpace"
  desc "Automatic window tiling within the existing Spaces"
  homepage "https://github.com/mssoftjp/LazySpace"

  depends_on arch: :arm64
  depends_on macos: :sonoma

  app "LazySpace.app"
  binary "#{appdir}/LazySpace.app/Contents/Resources/bin/lazyspace"

  uninstall quit: "jp.lazyspace.app"

  zap trash: [
    "~/.config/lazyspace",
    "~/Library/Application Support/LazySpace",
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
