#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html.
# Run `pod lib lint flutter_wallet_card.podspec` to validate before publishing.
#
Pod::Spec.new do |s|
  s.name             = 'flutter_wallet_card'
  s.version          = '1.0.0'
  s.summary          = 'Flutter wallet card for iOS & android devices.'
  s.license          = 'MIT'
  s.description      = 'Flutter wallet card for iOS & android devices.'
  s.homepage         = 'https://github.com/KQED/flutter_wallet_card'
  s.license          = { :file => '../LICENSE' }
  s.author           = { 'KQED' => 'mobile@kqed.org' }
  s.source           = { :path => '.' }
  s.source_files = 'flutter_wallet_card/Sources/flutter_wallet_card/**/*.swift'
  s.dependency 'Flutter'
  s.platform = :ios, '13.0'

  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
  s.swift_version = '5.0'

  # === OpenSSL (A/B TOGGLE) — verified unused by native code; comment out to build without ===
  s.dependency 'OpenSSL-Universal'
end
