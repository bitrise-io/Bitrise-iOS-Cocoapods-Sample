
source 'https://cdn.cocoapods.org/'

# Uncomment the next line to define a global platform for your project
platform :ios, '11.7'

def common_pods
    pod 'FirebaseAnalytics', '~> 9.4'
end

target 'iOS Demo' do
  # Comment the next line if you don't want to use dynamic frameworks
  use_frameworks!
  inhibit_all_warnings!

  # Pods for iOS Demo
  common_pods

  target 'iOS DemoTests' do
    inherit! :search_paths
    # Pods for testing
    common_pods
  end

  target 'iOS DemoUITests' do
    # Pods for testing
    common_pods
  end
end
