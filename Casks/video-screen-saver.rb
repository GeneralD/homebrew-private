cask "video-screen-saver" do
  version "1.0.2"
  sha256 "70645864b3f4207a71d963d34b7b70ff3946855136834793c018a4e2c8d80ed8"

  url "https://github.com/GeneralD/VideoScreenSaver/releases/download/v1.0.2/VideoScreenSaver-1.0.2.zip"
  name "VideoScreenSaver"
  desc "macOS screensaver that plays a video file in a loop"
  homepage "https://github.com/GeneralD/VideoScreenSaver"

  screen_saver "VideoScreenSaver.saver"
end
