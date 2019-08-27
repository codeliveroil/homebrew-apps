class Img < Formula
  @@ver = "v1.1"
  @@repo = "img"
  @@tool = "img"

  desc "Command line image viewer (GIFs too!)"
  homepage "https://github.com/codeliveroil/#{@@repo}"
  url "https://github.com/codeliveroil/#{@@repo}.git", :tag => @@ver, :using => :git
  version @@ver

  depends_on "go" => :build

  def install
    # build a go-like file hierarchy (e.g. src/github.com/organization/app)
    # and throw our source in there. We need to do this because our source
    # normally references vendors using the go file hierarchy
    ENV["GOPATH"] = buildpath
    path = buildpath/"src/github.com/codeliveroil/#{@@repo}"
    path.install Dir["*"]

    cd "#{path}" do
      system "go", "build", "-o", bin/"#{@@tool}"
    end
  end
end

