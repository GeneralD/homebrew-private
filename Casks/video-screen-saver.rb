cask "video-screen-saver" do
  version "1.0.1"
  sha256 "aed6a2026464cfa29e0f9ef94aebd891ae3d95221be53587a6062861a3053d49"

  url "https://github.com/GeneralD/VideoScreenSaver/releases/download/v1.0.1/VideoScreenSaver-1.0.1.zip"
  name "VideoScreenSaver"
  desc "macOS screensaver that plays a video file in a loop"
  homepage "https://github.com/GeneralD/VideoScreenSaver"

  screen_saver "VideoScreenSaver.saver"
end
