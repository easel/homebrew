require 'formula'

class V8cgi <Formula
  url 'git://github.com/easel/v8cgi.git', :using => :git
  version '0.8.2'
  #url 'http://v8cgi.googlecode.com/files/v8cgi-0.8.2-src.tar.gz'
  #md5 '2e54bc88ed238a188b4185e7352c6573'
  homepage 'http://v8cgi.googlecode.com/'

  depends_on 'scons'
  depends_on 'gd'
  depends_on 'v8'

  def patches
    "http://gist.github.com/raw/608251/v8cgi_installtargets.patch"
  end

  def install
    system "scons", "PREFIX=#{prefix}", "v8_path=#{HOMEBREW_PREFIX}/include", "mysql=0", "apache_path=/usr/include/apache2", "install"
  end
end
