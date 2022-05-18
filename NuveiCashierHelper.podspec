Pod::Spec.new do |s|
  s.name                        = "NuveiCashierHelper"
  s.version                     = '3.1.0'
  s.summary                     = "NuveiCashierHelper"
  s.description                 = <<-DESC
                                   Nuvei Cashier Helper Library
                                  DESC
  s.homepage                    = "https://github.com/SafeChargeInternational/Pods"
  s.license                     = 'Commercial license'
  s.author                      = "Nuvei"
  s.source                      = { :git => "git@github.com:SafeChargeInternational/NuveiCashierHelper-iOS.git", :tag => s.version.to_s }
  s.platform                    = :ios, '10.0'
  s.requires_arc                = true
  s.ios.deployment_target       = "10.0"
  s.swift_version               = '5.1'
  s.libraries                   = 'z'
  s.vendored_frameworks         = "NuveiCashierHelper.xcframework"
  s.frameworks                  = 'UIKit','WebKit'

  s.dependency 'CodeScanner', '1.8.2'
end
