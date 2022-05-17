class NotarizeApp < Formula
  desc "Make and notarise a .app or .dmg outside of Xcode"
  homepage "https://github.com/EddieCameron/notarize-app"
  url "https://github.com/EddieCameron/notarize-app/releases/download/1.1.0/notarize-app-homebrew-1.1.0.tar.gz"
  sha256 "73bfd15aeafc2db3683118dd9854c86e9601707b937383154156fbb57e851c46"
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
