class Clauderig < Formula                                                                                                                                                                               
  desc "Bootstrap a production-grade .claude/ setup into any project, instantly."
  homepage "https://github.com/harshit9413/clauderig"
  version "1.0.14"                                                                                                                                                                                       

  on_macos do                                                                                                                                                                                           
    if Hardware::CPU.arm?                                 
      url "https://github.com/harshit9413/clauderig/releases/download/v#{version}/clauderig_#{version}_macos_arm64.zip"                                                                                 
      sha256 "9a83be296f46bf6e2ed324b9c32679593f5e3c644ec85af3c8a1600aed39e206"                                                                                                                                                                
    else                                                                                                                                                                                                
      url "https://github.com/harshit9413/clauderig/releases/download/v#{version}/clauderig_#{version}_macos_x86_64.zip"                                                                                
      sha256 "9a83be296f46bf6e2ed324b9c32679593f5e3c644ec85af3c8a1600aed39e206"                                                                                                                                                                  
    end
  end                                                                                                                                                                                                   
                                                          
  def install                                                                                                                                                                                           
    bin.install "clauderig"
  end                                                                                                                                                                                                   
                                                          
  test do
    system "#{bin}/clauderig", "--version"
  end
end
