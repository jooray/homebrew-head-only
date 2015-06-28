class Ionice < Formula
  desc "start processes with lower IO priority on Mac OS X"
  homepage "https://github.com/elmarb/ionice"
  head "https://github.com/elmarb/ionice.git"

  def install
    system ENV.cc, ENV.cflags, "-o", "ionice", "ionice.c"
    bin.install "ionice"
  end

  test do
    system "#{bin}/ionice"
  end
end
