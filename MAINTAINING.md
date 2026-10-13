# Maintaining this tap

Each cask belongs to one app. The maintainer generates it from the app's notarized release
with private release tools; this repository only publishes it.

| Cask | App |
|---|---|
| `Casks/lazyspace.rb` | [LazySpace](https://github.com/mssoftjp/LazySpace) |

- A release replaces only its own cask, after the matching GitHub release is published.
  Do not edit a generated cask by hand; fix the template in the release tools and generate it again.
- A new app adds `Casks/<token>.rb` (the token is the app name in lowercase, with hyphens
  between words), a row in this table, and a row in the README.
- Before pushing, run `brew style Casks/<token>.rb`.
