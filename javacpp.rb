class Javacpp < Formula
  desc "The missing bridge between Java and native C++"
  homepage "https://github.com/bytedeco/javacpp"
  url "http://search.maven.org/remotecontent?filepath=org/bytedeco/javacpp/1.2.3/javacpp-1.2.3-bin.zip"
  sha256 "b57e8add9d2ae67cf93e87b4964e54969daa810d0abb224bc80c7d38e8f4f6a6"

  depends_on :java

  def install
    libexec.install "javacpp.jar"
    bin.write_jar_script libexec/"javacpp.jar", "javacpp", "$JAVA_OPTS"
  end

  test do
    system "true"
  end
end
