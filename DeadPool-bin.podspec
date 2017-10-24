Pod::Spec.new do |s|
  s.name = "DeadPool-bin"
  s.version = "0.3.0"
  s.summary = "Sniff infomation for RMD"
  s.license = "MIT"
  s.authors = {"leo"=>"liangliang.gao@ele.me"}
  s.homepage = "https://github.com/Eleme-IMF/DeadPool-bin"
  s.description = "Sniff application & device infomation and combined with vendor infomation, report to RMD for simulator identification ."
  s.frameworks = "UIKit"
  s.libraries = "stdc++"
  s.requires_arc = true
  s.source = { :git => 'git@github.com:Eleme-IMF/DeadPool-bin.git', :tag => s.version.to_s }

  s.ios.deployment_target    = '8.0'
  s.ios.vendored_framework   = 'ios/DeadPool.framework'
end
