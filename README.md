# homebrew-gcell

gcell Mac 앱을 Homebrew로 설치하는 저장소입니다.

## 설치

```
brew install --cask fcg-labs/gcell/gcell
```

- Apple Silicon(M1 이후) Mac, macOS 13 이상에서 됩니다.
- 설치 뒤 gcell을 한 번 열어 주세요(메뉴 막대에 뜹니다). 휴대폰 연동과 Claude Code · Codex · Cursor 연동은 앱 설정에서 켭니다.
- 새 버전은 앱이 스스로 받아 설치합니다. `brew upgrade`를 따로 돌릴 필요가 없습니다.

## 지우기

지우기 전에 연동을 먼저 끕니다. 끄지 않고 지우면 Claude Code · Codex · Cursor 설정에 gcell 훅 줄이 남습니다.

```
/Applications/gcell.app/Contents/MacOS/gcell-app integrations-off
brew uninstall --cask gcell
```

- 무엇이 켜져 있는지만 보려면 `gcell-app integrations-status`, 끌 것만 미리 보려면 `integrations-off --dry-run`입니다.
- 설정과 기록까지 지우려면 `brew uninstall --zap --cask gcell`입니다.

## 이 저장소의 파일

`Casks/gcell.rb`는 릴리스할 때 스크립트가 만들어 넣습니다. 손으로 고치지 않습니다.
