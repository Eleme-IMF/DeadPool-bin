Pod::Spec.new do |s|
  s.name             = "DeadPool-bin"
  s.version          = "0.2.0"
  s.summary          = "Sniff infomation for RMD"
  s.description      = <<-DESC
Sniff application & device infomation and combined with vendor infomation, report to RMD for simulator identification .
                       DESC

  s.homepage         = "https://github.com/Eleme-IMF/DeadPool-bin"
  s.license          = 'MIT'
  s.author           = { "leo" => "liangliang.gao@ele.me" }
  s.source           = { :git => "https://github.com/Eleme-IMF/DeadPool-bin.git", :tag => s.version.to_s }

  s.ios.deployment_target = '7.1'
  s.requires_arc          = true
  s.vendored_frameworks   = 'DeadPool.framework'

  s.frameworks  = 'UIKit', 'CoreTelephony', 'CoreLocation', 'SystemConfiguration'
  s.libraries   = 'z'
  s.resource    = 'DeadPool.framework/Resources/StingSSLPin.bundle'
  s.module_map  = 'DeadPool.framework/Modules/module.modulemap'
end
