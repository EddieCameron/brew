class NotarizeApp < Formula
  desc "Make and notarise a .app or .dmg outside of Xcode"
  homepage "https://github.com/EddieCameron/notarize-app"
  url "https://github.com/EddieCameron/notarize-app/releases/download/1.0.2/notarize-app-homebrew-1.0.2.tar.gz"
  sha256 "9dd11038cf46e971bd07cd316519faf8a372f5e48ee25c9bd52c440c910c261a"
  license "MIT"

  depends_on "create-dmg"

  def install
    system "make", "install-homebrew", "prefix=#{prefix}"
  end

  test do
    # this isnt a real test
    system "#{bin}/notarize-app", "--help"
  end
end
