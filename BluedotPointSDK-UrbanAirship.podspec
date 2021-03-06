Pod::Spec.new do |s|
  s.name         = "BluedotPointSDK-UrbanAirship"
  s.version      = "1.0.2"
  s.summary      = "Urban Airship Adapter for Bluedot Point SDK"
  s.homepage     = "https://www.bluedot.io"
  s.license      = { :type => "Copyright", :file => "LICENSE" }
  s.author = { "Bluedot Innovation" => "https://www.bluedot.io" }
  s.platform     = :ios
  s.ios.deployment_target = "10.0"
  s.source       = { :git => "https://github.com/Bluedot-Innovation/PointSDK-UrbanAirship-iOS.git", :tag => s.version.to_s }
  s.source_files  = "PointSDK-UrbanAirship-iOS"
  s.requires_arc = true
  s.dependency "BluedotPointSDK", '~> 1.12'
  s.dependency "UrbanAirship-iOS-SDK", '~> 10.0'
end
