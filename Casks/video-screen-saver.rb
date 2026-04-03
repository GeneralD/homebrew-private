cask "video-screen-saver" do
  version "1.0.2"
  sha256 "08c357778464db2f253c8159655645639e9e2d00c44a858969d35616b09636ef"

  url "https://github.com/GeneralD/VideoScreenSaver/releases/download/v1.0.2/VideoScreenSaver-1.0.2.zip"
  name "VideoScreenSaver"
  desc "macOS screensaver that plays a video file in a loop"
  homepage "https://github.com/GeneralD/VideoScreenSaver"

  screen_saver "VideoScreenSaver.saver"
end
