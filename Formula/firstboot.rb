class Firstboot < Formula
  desc "Bootstrap a macOS developer environment"
  homepage "https://github.com/thearkabanerjee/firstboot"
  url "https://github.com/thearkabanerjee/firstboot/releases/download/v1.0.0/firstboot-v1.0.0.tar.gz"
  sha256 "7be95fdf21939ebf54866cc408cce77d8b813920a6454c4b1184f4462665446e"
  version "1.0.0"

  def install
    bin.install "firstboot"
  end

  test do
    system "#{bin}/firstboot", "--help"
  end
end
