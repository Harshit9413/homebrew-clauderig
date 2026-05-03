class Clauderig < Formula                                                                                                                                                                               
  desc "Bootstrap a production-grade .claude/ setup into any project, instantly."
  homepage "https://github.com/harshit9413/clauderig"
  version "1.0.3"                                                                                                                                                                                       

  on_macos do                                                                                                                                                                                           
    if Hardware::CPU.arm?                                 
      url "https://github.com/harshit9413/clauderig/releases/download/v#{version}/clauderig_#{version}_macos_arm64.zip"                                                                                 
      sha256 "894571000d3005152ac10f12ea6f0483a75e7864e7328e4ced8070d0f714c143"                                                                                                                                                                
    else                                                                                                                                                                                                
      url "https://github.com/harshit9413/clauderig/releases/download/v#{version}/clauderig_#{version}_macos_x86_64.zip"                                                                                
      sha256 "894571000d3005152ac10f12ea6f0483a75e7864e7328e4ced8070d0f714c143"                                                                                                                                                                  
    end
  end                                                                                                                                                                                                   
                                                          
  def install                                                                                                                                                                                           
    bin.install "clauderig"
  end                                                                                                                                                                                                   
                                                          
  test do
    system "#{bin}/clauderig", "--version"
  end
end
