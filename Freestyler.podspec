Pod::Spec.new do |spec|
  spec.name         = 'Freestyler'
  spec.version      = '1.0.0'
  spec.license      = { :type => 'MIT', :file => 'LICENSE.txt' }
  spec.homepage     = 'https://github.com/cayugasoft/Freestyler'
  spec.authors      = { 'Alexander Doloz' => 'adoloz@cayugasoft.com' }
  spec.summary      = 'Swift 3 framework for styling + big set of styles for builtin UIView subclasses'
  spec.description  = "Freestyler provides styles and protocols so you can perform theming of your application with ease."
  spec.source       = { :git => 'https://github.com/cayugasoft/Freestyler.git', :tag => "#{spec.version.to_s}" }
  spec.ios.deployment_target  = '8.0'
  spec.source_files       = 'Freestyler/**/*.swift'
  spec.ios.framework  = 'UIKit'
  spec.dependency 'FreestylerCore', '~> 1.0.1'
end