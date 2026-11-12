cask "roofle" do
  version "2.0.0"
  sha256 "9533a79a24e94c3951eea91dfa78c1a025bbe0b97a5b63b028ed4cbc35496489"

  url "https://github.com/roofle-ai/roofle/releases/download/v#{version}/Roofle_#{version}_aarch64.dmg"
  name "Roofle"
  desc "Real-time meeting transcription, notes and suggested questions"
  homepage "https://github.com/roofle-ai/roofle"

  # The DMG is built for Apple Silicon; system-audio capture needs ScreenCaptureKit.
  depends_on arch: :arm64
  depends_on macos: ">= :ventura"

  app "Roofle.app"

  zap trash: [
    "~/Library/Application Support/com.roofle.app",
    "~/Library/Caches/com.roofle.app",
    "~/Library/Preferences/com.roofle.app.plist",
    "~/Library/Saved Application State/com.roofle.app.savedState",
    "~/Library/WebKit/com.roofle.app",
  ]
end
