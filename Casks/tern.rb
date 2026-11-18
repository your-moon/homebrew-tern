cask "tern" do
  version "0.1.4"
  sha256 "f0fc781e29a216ca1254a23ee53f5a2b2e32075a6f60c1d08cb1fc4b2bba98bf"

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
