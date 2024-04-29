class Publishmon < Formula
  desc "Swifty deamon which watches for file changes, regenerates content and restarts http server for you Publish website."
  homepage "https://github.com/supersonicbyte/Publishmon"
  url "https://github.com/supersonicbyte/Publishmon/archive/refs/tags/v0.1.0.tar.gz"
  sha256 "e8e38247b9b474299f9f6267daae29252e64a3a3827f5db610b1683e6d0252cb"
  depends_on xcode: [15, :build]
  depends_on macos: :sonoma


  def install
    system "swift", "build",
        "--configuration", "release",
        "--disable-sandbox"
    bin.install '.build/release/Publishmon'
  end
end
