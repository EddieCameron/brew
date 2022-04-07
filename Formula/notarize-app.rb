class NotarizeApp < Formula
  desc "Make and notarise a .app or .dmg outside of Xcode"
  homepage "https://github.com/EddieCameron/notarize-app"
  url "https://github.com/EddieCameron/notarize-app/releases/download/1.0.3/notarize-app-homebrew-1.0.3.tar.gz"
  sha256 "ecf1d6285efcfd9ede6e8616acedbd2f39df713b9da65412508b923c3aebaf0f"
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
