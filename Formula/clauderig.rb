class Clauderig < Formula                                                                                                                                                                               
  desc "Bootstrap a production-grade .claude/ setup into any project, instantly."
  homepage "https://github.com/harshit9413/clauderig"
  version "1.0.4"                                                                                                                                                                                       

  on_macos do                                                                                                                                                                                           
    if Hardware::CPU.arm?                                 
      url "https://github.com/harshit9413/clauderig/releases/download/v#{version}/clauderig_#{version}_macos_arm64.zip"                                                                                 
      sha256 "d7f653d593411f973bb41376146bfc5324d8c36396473203e7217d9b4956d8fb"                                                                                                                                                                
    else                                                                                                                                                                                                
      url "https://github.com/harshit9413/clauderig/releases/download/v#{version}/clauderig_#{version}_macos_x86_64.zip"                                                                                
      sha256 "d7f653d593411f973bb41376146bfc5324d8c36396473203e7217d9b4956d8fb"                                                                                                                                                                  
    end
  end                                                                                                                                                                                                   
                                                          
  def install                                                                                                                                                                                           
    bin.install "clauderig"
  end                                                                                                                                                                                                   
                                                          
  test do
    system "#{bin}/clauderig", "--version"
  end
end
