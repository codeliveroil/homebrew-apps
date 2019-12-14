class Img < Formula
  @@ver = "1.2"
  @@repo = "img"
  @@tool = "img"

  desc "Command line image viewer (GIFs too!)"
  homepage "https://github.com/codeliveroil/#{@@repo}"
  url "https://github.com/codeliveroil/#{@@repo}.git", :tag => @@ver, :using => :git
  version @@ver

  depends_on "go" => :build

  def install
    cd "#{buildpath}" do
      system "go", "build", "-o", bin/"#{@@tool}"
    end
  end
end

