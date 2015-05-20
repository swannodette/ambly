Pod::Spec.new do |s|
  s.name                  = 'Ambly'
  s.version               = '0.3.0'
  s.license               = { :type => 'Eclipse Public License 1.0', :file => 'epl.html' }
  s.summary               = 'ClojureScript REPL into embedded JavaScriptCore'
  s.homepage              = 'https://github.com/omcljs/ambly'
  s.author                = 'omcljs'
  s.source                = { :git => 'https://github.com/omcljs/ambly.git', :tag => '0.3.0' }
  s.source_files          = 'ObjectiveC/src/*.{h,m}'
  s.platform              = :ios
  s.ios.deployment_target = '8.0'
  s.requires_arc          = true
  s.dependency "GCDWebServer/WebDAV", "~> 3.2.2"
  s.frameworks = 'JavaScriptCore'
  s.xcconfig = { 
    'LIBRARY_SEARCH_PATHS' => '"$(PODS_ROOT)/Ejecta/Source/lib"', 
    'HEADER_SEARCH_PATHS' => '"$(PODS_ROOT)/Ejecta/Source/lib"', 
    'FRAMEWORK_SEARCH_PATHS' => '"$(PODS_ROOT)/Ejecta/Source/lib"'
  }
end
