cask "gcell" do
  version "1.0.1"
  sha256 "8c387a039abcbb53c459f314d08d159aa2af49039a8a1cea94bbdb0d3ddfe361"

  url "https://github.com/FCG-labs/homebrew-gcell/releases/download/v#{version}/gcell-#{version}.zip"
  name "gcell"
  desc "Menu bar companion that relays AI coding agent sessions to a phone"
  homepage "https://github.com/FCG-labs/homebrew-gcell"

  # 새 판은 앱이 스스로 받는다(자동 업데이트) — brew upgrade는 --greedy일 때만 이 앱을 건드린다. 판 목록은 앱과 같은 것을 읽는다
  livecheck do
    url "https://gcell-relay.develop-fcg.workers.dev/dl/appcast.xml"
    strategy :sparkle
  end

  auto_updates true
  depends_on arch: :arm64 # Apple Silicon 전용
  depends_on macos: :ventura

  app "gcell.app"

  # 훅 · 플러그인 연동은 여기서 걷지 않는다 — Homebrew는 업그레이드 · 재설치 때도 이 단계를 그대로 돌려서
  # 걷으면 판을 올릴 때마다 연동이 조용히 꺼진다. 지우기 전에 사람이 한 번 끈다 — gcell-app integrations-off(아래 caveats)
  uninstall quit: "software.lim.gcell"

  zap trash: [
    "~/.gcell",
    "~/Library/Caches/software.lim.gcell",
    "~/Library/HTTPStorages/software.lim.gcell",
    "~/Library/Preferences/software.lim.gcell.plist",
  ]

  caveats <<~EOS
    처음 한 번 gcell을 열어 주세요(메뉴 막대에 뜹니다). 휴대폰 연동과 Claude Code · Codex · Cursor 연동은 앱 설정에서 켭니다.
    새 버전은 앱이 스스로 받아 설치합니다.

    지우기 전에는 연동을 먼저 끄세요. 끄지 않고 지우면 Claude Code · Codex · Cursor 설정에 gcell 훅 줄이 남습니다.
      /Applications/gcell.app/Contents/MacOS/gcell-app integrations-off
    무엇이 켜져 있는지만 보려면 integrations-status, 끌 것만 미리 보려면 integrations-off --dry-run 입니다.
  EOS
end
