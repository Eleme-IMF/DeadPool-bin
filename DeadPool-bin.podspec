Pod::Spec.new do |s|
  s.name = "DeadPool-bin"
  s.version = "0.3.1"
  s.summary = "Sniff infomation for RMD"
  s.license = "MIT"
  s.authors = {"leo"=>"liangliang.gao@ele.me"}
  s.homepage = "https://github.com/Eleme-IMF/DeadPool-bin"
  s.description = "Sniff application & device infomation and combined with vendor infomation, report to RMD for simulator identification ."
  s.frameworks = "UIKit"
  s.libraries = "stdc++"
  s.requires_arc = true
  s.source = { :git => 'https://github.com/Eleme-IMF/DeadPool-bin.git', :tag => s.version.to_s }

  s.source_files = 'header/*'
  s.ios.deployment_target    = '8.0'
  s.vendored_libraries = 'lib/*.a'
  s.dependency 'SAMKeychain'
  s.public_header_files = 'header/*.h'
end
