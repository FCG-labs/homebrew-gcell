# gcell — Homebrew tap

**English** | [한국어](README.ko.md)

Install the gcell Mac app with [Homebrew](https://brew.sh).

## Install

```
brew install --cask fcg-labs/gcell/gcell
```

Requirements

- Mac with Apple silicon (M1 or later)
- macOS 13 Ventura or later

After installing, open gcell once. It lives in the menu bar. Turn on phone pairing and the Claude Code, Codex and Cursor integrations in the app's settings.

The gcell interface is currently in Korean.

## Update

gcell updates itself. You do not need to run `brew upgrade`.

## Uninstall

Turn the integrations off first. If you skip this step, gcell hook entries stay in your Claude Code, Codex and Cursor settings.

```
/Applications/gcell.app/Contents/MacOS/gcell-app integrations-off
brew uninstall --cask gcell
```

Other options

- See what is turned on: `/Applications/gcell.app/Contents/MacOS/gcell-app integrations-status`
- Preview what would be turned off: `/Applications/gcell.app/Contents/MacOS/gcell-app integrations-off --dry-run`
- Also remove settings and history: `brew uninstall --zap --cask gcell`

## About this repository

`Casks/gcell.rb` is generated for each release. Please do not edit it by hand.

## License

The Homebrew cask definition in this repository is released under the [MIT License](LICENSE).

gcell itself is proprietary software and is not covered by that license.
