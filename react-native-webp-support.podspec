require 'json'

package = JSON.parse(File.read(File.join(__dir__, 'package.json')))

Pod::Spec.new do |s|
  s.name         = "react-native-webp-support"
  s.version      = package['version']
  s.summary      = "React Native iOS WebP format support"
  s.license      = "MIT"

  s.authors      = package['author']
  s.homepage     = package['homepage']
  s.platform     = :ios, "9.0"

  s.source       = { :git => "https://github.com/TGPSKI/react-native-webp-support.git" }
  s.source_files  = "./*.{h,m}"

  s.vendored_frameworks = './WebP.framework', 'WebPDemux.framework'
  s.dependency 'React'
end