#
# Be sure to run `pod lib lint ASIrregularCollectionUIKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'ASIrregularCollectionUIKit'
  s.version          = '1.0.0'
  s.summary          = 'Irregular Collection View Layout and Controller for Texture.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/pisces/ASIrregularCollectionUIKit'
  s.description      = 'Irregular Collection View Layout and Controller for Texture'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'Steve Kim' => 'hh963103@gmail.com' }
  s.source           = { :git => 'https://github.com/pisces/ASIrregularCollectionUIKit.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '8.0'

  s.source_files = 'ASIrregularCollectionUIKit/Classes/**/*'
  s.dependency 'Texture', '~> 2.5'
  s.dependency 'IrregularCollectionUIKit', '~> 2.0.0'
end
