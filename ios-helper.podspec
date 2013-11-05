Pod::Spec.new do |s|
	s.name = 'ios-helper'
	s.version = '1.0'
	s.license = 'MIT'
	s.summary = 'Test'
	s.homepage = ''
	s.author = { 'zt' => 'https://github.com/justzt' }
	s.source = { :git => "https://github.com/justzt/ios-helper.git"}
	s.platform = :ios
	s.source_files = '*.{h,m}'
end
