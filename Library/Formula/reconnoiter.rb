require 'formula'

class Reconnoiter <Formula
  url 'https://labs.omniti.com/reconnoiter/tags/urskek', :using => :svn
  version '0.1.1'
  head 'https://labs.omniti.com/reconnoiter/trunk'
  homepage 'http://labs.omniti.com/labs/reconnoiter'
  md5 ''

  depends_on 'pcre'
  depends_on 'libssh2'
  depends_on 'libxml2'
  depends_on 're2c'

  def install
    system "autoconf"
    system "./configure", "--prefix=#{prefix}"
    # system "cmake . #{std_cmake_parameters}"
    system "make -j1" # single-threaded make so dependencies don't get screwed up
    system "make install"
  end
end
