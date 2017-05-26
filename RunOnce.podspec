#
# Be sure to run `pod lib lint RunOnce.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'RunOnce'
  s.version          = '0.1.0'
  s.summary          = 'A wrapper that expose a way to run once a func or a fallback one.'

  s.description      = <<-DESC
RunOnce helps you in easily run a task only once for the overall life of your app. It relies on UserDefaults to do the job and provide also a fallback system to run a fallback function.
                       DESC

  s.homepage         = 'https://github.com/matteocrippa/RunOnce'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'matteocrippa' => '@_ghego' }
  s.source           = { :git => 'https://github.com/matteocrippa/RunOnce.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/_ghego'

  s.ios.deployment_target = '8.0'

  s.source_files = 'RunOnce/Classes/**/*'

end
