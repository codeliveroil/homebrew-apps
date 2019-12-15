class Mastermind < Formula
  @@ver = "1.1"
  @@repo = "mastermind"
  @@tool = "mastermind"

  desc "Mastermind - code breaking game"
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

