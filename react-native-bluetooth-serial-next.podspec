require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-bluetooth-serial-next"
  s.version      = package['version']
  s.summary      = "React Native Bluetooth Serial library"

  s.authors      = { "Marcus Bernales" => "marcus@totum.io" }
  s.homepage     = "https://github.com/totum-tech/react-native-bluetooth-serial-next#readme"
  s.license      = "Apache License 2.0"
  s.platform     = :ios, "8.0"

  s.source       = { :git => "https://github.com/totum-tech/react-native-bluetooth-serial-next.git" }
  s.source_files  = "ios/**/*.{h,m}"
  s.compiler_flags = '-DMULTIPLATFORM_BLE_ADAPTER'

  s.dependency 'React'
end
