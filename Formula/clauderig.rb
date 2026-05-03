class Clauderig < Formula                                                                                                                                                                               
  desc "Bootstrap a production-grade .claude/ setup into any project, instantly."
  homepage "https://github.com/harshit9413/clauderig"
  version "1.0.0"                                                                                                                                                                                       

  on_macos do                                                                                                                                                                                           
    if Hardware::CPU.arm?                                 
      url "https://github.com/harshit9413/clauderig/releases/download/v#{version}/clauderig_#{version}_macos_arm64.zip"                                                                                 
      sha256 "381b4e1690471044ecb1e881acf95bd6a4b88c9b316a951a93eb1042410aa57e"                                                                                                                                                                
    else                                                                                                                                                                                                
      url "https://github.com/harshit9413/clauderig/releases/download/v#{version}/clauderig_#{version}_macos_x86_64.zip"                                                                                
      sha256 "381b4e1690471044ecb1e881acf95bd6a4b88c9b316a951a93eb1042410aa57e"                                                                                                                                                                  
    end
  end                                                                                                                                                                                                   
                                                          
  def install                                                                                                                                                                                           
    bin.install "clauderig"
  end                                                                                                                                                                                                   
                                                          
  test do
    system "#{bin}/clauderig", "--version"
  end
end
