cask "tern" do
  version "0.1.3"
  sha256 "6c3fddd6b323e63fedf099f94f78311f72e0b5532da9ba3a4b1e15c3601b5443"

  url "https://github.com/your-moon/tern/releases/download/v#{version}/tern-#{version}-macos-arm64.zip"
  name "tern"
  desc "Fast, low-memory SSH terminal"
  homepage "https://github.com/your-moon/tern"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on arch: :arm64
  depends_on macos: :big_sur

  app "tern.app"

  zap trash: [
    "~/Library/Application Support/tern",
    "~/Library/Logs/tern",
  ]
end
