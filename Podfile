source 'https://github.com/CocoaPods/Specs.git'
platform :ios, '10.0'
use_frameworks!

target 'Pokedex-ios' do
  pod 'SnapKit', '~> 5.0.0'
  pod 'RxSwift', '~> 4.5'
  pod 'RxCocoa', '~> 4.5'
  pod 'RxRetroSwift', '~> 2.3.2'
end

post_install do |installer|
    installer.pods_project.targets.each do |target|
      target.build_configurations.each do |config|
        config.build_settings['SWIFT_VERSION'] = '4.2'
        config.build_settings['ENABLE_BITCODE'] = 'NO'
      end
    end
end
