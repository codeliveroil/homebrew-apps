class Ncl < Formula
  @@ver = "1.3"
  @@repo = "ncl"
  @@tool = "ncl"

  desc "Navigable calendar"
  homepage "https://github.com/codeliveroil/#{@@repo}"
  url "https://github.com/codeliveroil/#{@@repo}.git", :tag => @@ver, :using => :git
  version @@ver

  def install
    cd "#{buildpath}" do
      system "mkdir", bin
      system "cp", "#{@@tool}", bin/"#{@@tool}"
    end
  end
end

