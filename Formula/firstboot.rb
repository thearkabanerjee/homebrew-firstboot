class Firstboot < Formula
  desc "Bootstrap a macOS developer environment"
  homepage "https://github.com/thearkabanerjee/firstboot"
  url "https://github.com/thearkabanerjee/firstboot/releases/download/v1.0.0/firstboot-v1.0.0.tar.gz"
  sha256 "d82013fb586860dab15a6cc8e32de84904ee3908c2be37ffc43d5ffb34aa7579"
  version "1.0.0"

  def install
    bin.install "firstboot"
  end

  test do
    system "#{bin}/firstboot", "--help"
  end
end
