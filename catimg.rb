require "formula"

class Catimg < Formula
  homepage "https://github.com/posva/catimg"
  url "https://github.com/posva/catimg/tarball/master/4fc3d6e.tar.gz"
  sha1 "217405d7aca7bc809754dae3f64e8a218a320a9a"
  version "4fc3d6e"

  depends_on 'imagemagick'

  def install
    # TODO: move colors.png somewhere appropriate and edit catimg script in place to reference it
    #inreplace 'catimg' do |s|
      #s.gsub! /colors\.png/
    #end
    bin.install 'catimg', 'colors.png'
  end

  test do
    # TODO: this
    system "true"
  end
end
