source 'https://github.com/CocoaPods/Specs.git'

platform :ios, '9.0'
inhibit_all_warnings!

target 'RxInputOutput' do
  use_frameworks!

  pod 'RxSwift',    '~> 4.0'
  pod 'RxCocoa',    '~> 4.0'

  target 'RxInputOutputTests' do
    inherit! :search_paths
    
    pod 'RxBlocking', '~> 4.0'
    pod 'RxTest',     '~> 4.0'
  end

end
