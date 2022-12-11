class NotarizeApp < Formula
  desc "Make and notarise a .app or .dmg outside of Xcode"
  homepage "https://github.com/EddieCameron/notarize-app"
  url "https://github.com/EddieCameron/notarize-app/releases/download/1.2.0/notarize-app-homebrew-1.2.0.tar.gz"
  sha256 "676274c55a554cbdb4ef349540b0700fce7e7325753711a2889bf5949298210e"
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
