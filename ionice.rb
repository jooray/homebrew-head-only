class Ionice < Formula
  homepage "https://github.com/elmarb/ionice"
  desc "start processes with lower IO priority on Mac OS X"
  url "https://github.com/elmarb/ionice.git"

  def install
    system ENV.cc, ENV.cflags, "-o", "ionice", "ionice.c"
    bin.install "ionice"
  end

  test do
    system "#{bin}/ionice"
  end
end
