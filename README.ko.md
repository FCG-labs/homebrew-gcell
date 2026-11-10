# gcell — Homebrew 설치 저장소

[English](README.md) | **한국어**

gcell Mac 앱을 [Homebrew](https://brew.sh)로 설치합니다.

## 설치

```
brew install --cask fcg-labs/gcell/gcell
```

필요한 것

- Apple Silicon Mac(M1 이후)
- macOS 13 Ventura 이상

설치한 뒤 gcell을 한 번 열어 주세요. 메뉴 막대에 뜹니다. 휴대폰 연동과 Claude Code · Codex · Cursor 연동은 앱 설정에서 켭니다.

## 업데이트

새 버전은 gcell이 스스로 받아 설치합니다. `brew upgrade`를 따로 돌릴 필요가 없습니다.

## 지우기

지우기 전에 연동을 먼저 꺼 주세요. 끄지 않고 지우면 Claude Code · Codex · Cursor 설정에 gcell 훅 줄이 남습니다.

```
/Applications/gcell.app/Contents/MacOS/gcell-app integrations-off
brew uninstall --cask gcell
```

그 밖에

- 무엇이 켜져 있는지 보기: `/Applications/gcell.app/Contents/MacOS/gcell-app integrations-status`
- 끌 것만 미리 보기: `/Applications/gcell.app/Contents/MacOS/gcell-app integrations-off --dry-run`
- 설정과 기록까지 지우기: `brew uninstall --zap --cask gcell`

## 이 저장소에 대하여

`Casks/gcell.rb`는 릴리스할 때마다 만들어집니다. 손으로 고치지 말아 주세요.

## 라이선스

이 저장소의 Homebrew 설치 정의는 [MIT 라이선스](LICENSE)로 공개합니다.

gcell 앱은 전용 소프트웨어이며 이 라이선스가 적용되지 않습니다.
