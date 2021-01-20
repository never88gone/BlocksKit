Pod::Spec.new do |s|
  s.name                  = 'NGBlocksKit'
  s.version               = '1.0.0'
  s.license               = 'MIT'
  s.summary               = 'The Objective-C block utilities you always wish you had.'
  s.homepage              = 'https://github.com/never88gone/BlocksKit'
  s.author                = { 'Zachary Waldowski' => 'zach@waldowski.me',
                              'Alexsander Akers'  => 'a2@pnd.mn' ,
                              'never88gone.cn'  => 'hsb@myit2017.mn' }
  s.source                = { :git => 'https://github.com/never88gone/BlocksKit', :tag => "#{s.version}" }
  s.requires_arc          = true
  s.osx.deployment_target = '10.8'
  s.ios.deployment_target = '6.0'
  s.watchos.deployment_target = '2.0'

  s.default_subspec = 'All'
  s.subspec 'All' do |ss|
    ss.dependency 'NGBlocksKit/Core'
    ss.dependency 'NGBlocksKit/DynamicDelegate'
    ss.ios.dependency 'NGBlocksKit/MessageUI'
    ss.ios.dependency 'NGBlocksKit/QuickLook'
    ss.ios.dependency 'NGBlocksKit/UIKit'
  end

  s.subspec 'Core' do |ss|
    ss.source_files = 'BlocksKit/BlocksKit.h', "BlocksKit/BKDefines.h", 'BlocksKit/Core/*.{h,m}'
  end

  s.subspec 'DynamicDelegate' do |ss|
    ss.source_files = 'BlocksKit/DynamicDelegate/*.{h,m}', 'BlocksKit/DynamicDelegate/Foundation/*.{h,m}'
  end

  s.subspec 'MessageUI' do |ss|
    ss.dependency 'NGBlocksKit/Core'
    ss.dependency 'NGBlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/BlocksKit+MessageUI.h', 'BlocksKit/MessageUI/*.{h,m}'
    ss.ios.frameworks = 'MessageUI'
  end

  s.subspec 'QuickLook' do |ss|
    ss.dependency 'NGBlocksKit/Core'
    ss.dependency 'NGBlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/BlocksKit+QuickLook.h', 'BlocksKit/QuickLook/*.{h,m}'
    ss.ios.frameworks = 'QuickLook'
  end

  s.subspec 'UIKit' do |ss|
    ss.dependency 'NGBlocksKit/Core'
    ss.dependency 'NGBlocksKit/DynamicDelegate'
    ss.platform = :ios
    ss.source_files = 'BlocksKit/BlocksKit+UIKit.h', 'BlocksKit/UIKit/*.{h,m}'
  end
end
