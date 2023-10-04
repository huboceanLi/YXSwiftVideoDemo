#
# Be sure to run `pod lib lint YXSwiftVideoDemo.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'YXSwiftVideoDemo'
  s.version          = '0.1.0'
  s.summary          = 'A short description of YXSwiftVideoDemo.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/li437277219@gmail.com/YXSwiftVideoDemo'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'li437277219@gmail.com' => '“li437277219@gmail.com”' }
  s.source           = { :git => 'https://github.com/li437277219@gmail.com/YXSwiftVideoDemo.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '12.0'
  s.static_framework = true
  s.ios.deployment_target = '10.0'
  s.source_files = 'YXSwiftVideoDemo/Classes/**/*'
  
  # s.resource_bundles = {
  #   'YXSwiftVideoDemo' => ['YXSwiftVideoDemo/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
  
  s.dependency "QMUIKit"
  s.dependency "Alamofire", '4.9.1'
  s.dependency "HandyJSON", '5.0.2'
  s.dependency "SnapKit", '5.6.0'
  s.dependency "YYWebImage"
  s.dependency "Masonry", '~> 1.1.0'
  s.dependency "YYModel"
  s.dependency "HYVideoPlay", '~> 0.1.5'

end
