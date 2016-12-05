class JoltCli < Formula
  desc "JSON to JSON transformation library written in Java where the "specification" for the transform is itself a JSON document"
  homepage "http://bazaarvoice.github.io/jolt/"
  url "http://search.maven.org/remotecontent?filepath=com/bazaarvoice/jolt/jolt-cli/0.0.24/jolt-cli-0.0.24.jar"
  version "0.0.24"
  sha256 "5a4bf4afb8bd01154aa2bcf89bde87a1b2623ae8b6901893a4d9f1a291689bbf"

  depends_on :java

  def install
    libexec.install Dir["packr*"]
    bin.write_jar_script libexec/"packr-#{version}-jar-with-dependencies.jar", "packr", "$JAVA_OPTS"
  end

  test do
    system "true"
  end
end
