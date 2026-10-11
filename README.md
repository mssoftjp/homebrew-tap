# mssoftjp Homebrew tap

Homebrew casks for apps by mssoftjp.

| Cask | App |
|---|---|
| `lazyspace` | [LazySpace](https://github.com/mssoftjp/LazySpace): tiles the windows inside each macOS Space |

```bash
brew install --cask mssoftjp/tap/<cask>
brew upgrade --cask mssoftjp/tap/<cask>
brew uninstall --cask mssoftjp/tap/<cask>
```

Replace `<cask>` with a name from the table, such as `lazyspace`. Uninstalling keeps the
app's settings; `brew uninstall --cask --zap mssoftjp/tap/<cask>` also removes the files
the cask lists as its settings. Requirements and first-run steps are in each app's README.

## 日本語

mssoftjpのアプリをHomebrewで配布するtapです。上の表のcask名を指定してインストールします。
アンインストールしても設定は残ります。`--zap`を付けると、caskに登録された設定ファイルも削除します。
動作要件と初回の設定は、各アプリのREADMEにあります。
