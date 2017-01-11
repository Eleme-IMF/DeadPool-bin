Pod::Spec.new do |s|
  s.name             = "DeadPool-bin"
  s.version          = "0.1.0"
  s.summary          = "Sniff infomation for RMD"
  s.description      = <<-DESC
Sniff application & device infomation and combined with vendor infomation, report to RMD for simulator identification .
                       DESC

  s.homepage         = "https://git.elenet.me/liangliang.gao/DeadPool-bin"
  s.license          = 'MIT'
  s.author           = { "leo" => "liangliang.gao@ele.me" }
  s.source           = { :git => "git@git.elenet.me:liangliang.gao/DeadPool-bin.git", :tag => s.version.to_s }

  s.platform              = :ios, '7.1'
  s.ios.deployment_target = '7.1'
  s.requires_arc          = true

  # s.public_header_files = 'DeadPool.framework/Headers/*.h'
  s.frameworks = 'UIKit'
  s.vendored_frameworks = 'DeadPool.framework'
  s.pod_target_xcconfig = { 'OTHER_LDFLAGS' => '-all_load'}
  s.resource = 'DeadPool.bundle'
  s.module_map = 'DeadPool.framework/Modules/module.modulemap'
end
