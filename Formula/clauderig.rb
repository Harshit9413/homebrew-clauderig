class Clauderig < Formula                                                                                                                                                                               
  desc "Bootstrap a production-grade .claude/ setup into any project, instantly."
  homepage "https://github.com/harshit9413/clauderig"
  version "1.0.1"                                                                                                                                                                                       

  on_macos do                                                                                                                                                                                           
    if Hardware::CPU.arm?                                 
      url "https://github.com/harshit9413/clauderig/releases/download/v#{version}/clauderig_#{version}_macos_arm64.zip"                                                                                 
      sha256 "dc7cf32351f82e1a891bdb958a41cbb89a19b121be9db807797a0b59f51c394f"                                                                                                                                                                
    else                                                                                                                                                                                                
      url "https://github.com/harshit9413/clauderig/releases/download/v#{version}/clauderig_#{version}_macos_x86_64.zip"                                                                                
      sha256 "dc7cf32351f82e1a891bdb958a41cbb89a19b121be9db807797a0b59f51c394f"                                                                                                                                                                  
    end
  end                                                                                                                                                                                                   
                                                          
  def install                                                                                                                                                                                           
    bin.install "clauderig"
  end                                                                                                                                                                                                   
                                                          
  test do
    system "#{bin}/clauderig", "--version"
  end
end
