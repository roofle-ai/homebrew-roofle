cask "roofle" do
  version "1.0.0"
  sha256 "1d36a171deab4fd78cb1f9b16cdab20d1eb4a0ffcfa1595375b4ba712925adb0"

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
