class Pathsaver < Formula
  desc "A brew package for saving directory paths"
  homepage "https://github.com/TraXIcoN/pathsaver"
  url "https://github.com/TraXIcoN/pathsaver/archive/refs/tags/v1.2.tar.gz"
  sha256 "db1391bf91e21f6f62ca3bd4fffc757c50984a59d96b766b5f294f105042049a"
  license "MIT"

  depends_on "python-argcomplete" => :python
  depends_on "python-tabulate" => :python

  def install
    # Install Python script
    bin.install "pathsaver.py" => "pathsaver"
    # Make script executable
    chmod 0755, "#{bin}/pathsaver"
    # Install shell completion script
    # bash_completion.install "pathsaver-completion.bash" => "pathsaver"
    # Install man page
    # man1.install "pathsaver.1"
  end

  test do
    system "#{bin}/pathsaver", "--version"
  end
end
