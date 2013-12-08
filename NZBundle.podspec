Pod::Spec.new do |s|
  s.name         = 'NZBundle'
  s.version      = '0.0.1'
  s.summary      = 'Changes the information present in the Info.plist project file at runtime, as version name.'
  s.author = {
	'Bruno Tortato Furtado' => 'bruno.furtado@gruponzn.com'
  }
  s.source = {
	:git => 'https://github.com/NZN/NZBundle.git',
	:tag => '0.0.1'
  }
  s.source_files = 'NZBundle/*.{h,m}'
end