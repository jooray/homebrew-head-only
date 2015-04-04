class Ionice < Formula
  homepage "https://github.com/elmarb/ionice"
  url "https://github.com/elmarb/ionice.git", :revision => "63539195ba6aa082376a53b09a47b33c25a9b204"
  version "20120202"

  def install
    system "#{ENV.cc} #{ENV.cflags} -o ionice ionice.c"
    bin.install "ionice"
  end

  test do
    system "#{bin}/ionice"
  end
end
