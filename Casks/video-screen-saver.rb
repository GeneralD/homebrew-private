cask "video-screen-saver" do
  version "1.0.2"
  sha256 "f0d089c946acf553e15152fc17dcb0bf4c97bd9765adfdfa993ecb22a96fbf19"

  url "https://github.com/GeneralD/VideoScreenSaver/releases/download/v1.0.2/VideoScreenSaver-1.0.2.zip"
  name "VideoScreenSaver"
  desc "macOS screensaver that plays a video file in a loop"
  homepage "https://github.com/GeneralD/VideoScreenSaver"

  screen_saver "VideoScreenSaver.saver"
end
