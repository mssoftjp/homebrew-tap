# mssoftjp Homebrew tap

LazySpace tiles the windows inside each macOS Space. Install it with:

```bash
brew install --cask mssoftjp/tap/lazyspace
```

The cask installs LazySpace.app and the `lazyspace` command. It requires macOS 14
or later and Apple Silicon. Open the app and turn on LazySpace in System Settings ›
Privacy & Security › Device Control and Data Access (Accessibility before macOS 27).

To upgrade or uninstall:

```bash
brew upgrade --cask mssoftjp/tap/lazyspace
brew uninstall --cask mssoftjp/tap/lazyspace
```

Uninstalling keeps your settings. To remove the configuration and saved state as well,
run `brew uninstall --cask --zap mssoftjp/tap/lazyspace`.

[Documentation and source](https://github.com/mssoftjp/LazySpace) ·
[Releases](https://github.com/mssoftjp/LazySpace/releases) ·
[日本語](https://github.com/mssoftjp/LazySpace/blob/main/README.ja.md)

Maintainers: release preparation is documented in
[RELEASING.md](https://github.com/mssoftjp/LazySpace/blob/main/packaging/RELEASING.md).
