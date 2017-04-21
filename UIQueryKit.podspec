Pod::Spec.new do |s|
  s.name             = 'UIQueryKit'
  s.version          = '1.0'
  s.summary          = 'Provides a set of extensions for querying UIKit components.'
  s.homepage         = 'https://github.com/152percent/UIQueryKit'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Shaps Benkau' => 'shaps@152percent.com' }
  s.source           = { :git => 'https://github.com/152percent/UIQueryKit.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/152percent'
  s.ios.deployment_target = '9.0'
  s.source_files = 'UIQueryKit/Classes/**/*'
end
