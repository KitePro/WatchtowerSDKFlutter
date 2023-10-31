Pod::Spec.new do |s|
  s.name                = 'watchtower_sdk'
  s.version             = '0.0.1'
  s.summary             = 'iOS SDK of watchtower analytics'
  s.description         = 'watchtower'
  s.homepage            = 'https://watchtower.cyou'
  s.documentation_url   = ''
  s.license             = { :type => 'LGPL-3.0'}
  s.authors             = { '' => '' }

  s.platform            = :ios, '9.0'
  s.source              = { :path => '.' }
  s.ios.deployment_target = '9.0'

  s.source_files        = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.static_framework    = true

  s.dependency          'Flutter'
  # Flutter.framework does not contain a i386 slice.
  s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'EXCLUDED_ARCHS[sdk=iphonesimulator*]' => 'i386' }
end
