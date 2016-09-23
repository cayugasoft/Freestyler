use_frameworks!

def shared_pods
	pod 'FreestylerCore'	
end

target 'Freestyler' do
	shared_pods
end

target 'FreestylerTests' do
	shared_pods
	pod 'Quick'
	pod 'Nimble'	
end

post_install do |installer|
  installer.pods_project.targets.each do |target|
    target.build_configurations.each do |configuration|
      configuration.build_settings['SWIFT_VERSION'] = "2.3"
    end
  end
end

