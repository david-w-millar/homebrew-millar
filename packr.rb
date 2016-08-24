class Packr < Formula
  desc "Package jar, assets and a jvm for distribution on Windows, Linux and Mac"
  homepage "https://github.com/libgdx/packr"
  url "http://search.maven.org/remotecontent?filepath=com/badlogicgames/packr/packr/1.2/packr-1.2-jar-with-dependencies.jar"
  sha256 "8a7f8f0173a77f4c7589ec8dc784714461c2f154712b727085cb07f905af730f"

  depends_on :java

  def install
    libexec.install Dir["packr*"]
    bin.write_jar_script libexec/"packr-#{version}-jar-with-dependencies.jar", "packr", "$JAVA_OPTS"
  end

  test do
    system "true"
  end
end
