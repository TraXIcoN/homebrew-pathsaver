class Pathsaver < Formula
  desc "A brew package for saving directory paths"
  homepage "https://github.com/TraXIcoN/pathsaver"
  url "https://github.com/TraXIcoN/pathsaver/archive/refs/tags/v1.3.tar.gz"
  sha256 "6c79ea15632794cc1e43c7c6370f4e7d67960eb28b9c6a829f6263185f4bc5ec"
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
