class NotarizeApp < Formula
  desc "Make and notarise a .app or .dmg outside of Xcode"
  homepage "https://github.com/EddieCameron/notarize-app"
  url "https://github.com/EddieCameron/notarize-app/releases/download/1.0.1/notarize-app-homebrew-1.0.1.tar.gz"
  sha256 "d3970beed852a41fe0df4b748be5eaf2810a539e72417fe5eea0c184b0524d33"

  depends_on "create-dmg"

  bottle :unneeded

  def install
    system "make", "install-homebrew", "prefix=#{prefix}"
  end

  test do
    # this isnt a real test
    system "#{bin}/notarize-app", "--help"
  end
end
