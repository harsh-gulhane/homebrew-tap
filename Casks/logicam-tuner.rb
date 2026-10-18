cask "logicam-tuner" do
  version "1.0.0"
  sha256 "8e472457e4286569c73447d060d4fee1b9b62b7f393f06dcba0aeee5642a24b0"

  url "https://github.com/harsh-gulhane/logicam-tuner/releases/download/v#{version}/LogiCam-Tuner-#{version}.zip"
  name "LogiCam Tuner"
  desc "Camera controls, smart auto exposure and stream stats for Logitech StreamCam"
  homepage "https://github.com/harsh-gulhane/logicam-tuner"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "LogiCam Tuner.app"
  binary "#{appdir}/LogiCam Tuner.app/Contents/MacOS/logicam"

  zap trash: [
    "~/Library/Application Support/LogiCam Tuner",
    "~/Library/Logs/LogiCamTuner.log",
    "~/Library/Preferences/io.github.logicamtuner.plist",
  ]

  caveats <<~EOS
    LogiCam Tuner is free and open source but not notarized by Apple, so macOS blocks it
    on first launch. Open System Settings > Privacy & Security and click "Open Anyway",
    or run:
      xattr -dr com.apple.quarantine "#{appdir}/LogiCam Tuner.app"
  EOS
end
