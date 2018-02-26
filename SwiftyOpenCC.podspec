Pod::Spec.new do |s|
  s.name         = "SwiftyOpenCC"
  s.version      = "0.2.2"
  s.summary      = "Swift port of Open Chinese Convert"
  s.description  = <<-DESC
Open Chinese Convert (OpenCC, 開放中文轉換) is an opensource project for conversion between Traditional Chinese and Simplified Chinese, supporting character-level conversion, phrase-level conversion, variant conversion and regional idioms among Mainland China, Taiwan and Hong kong.
                   DESC
  s.homepage     = "https://github.com/ddddxxx/SwiftyOpenCC"
  s.license      = "MIT"
  s.author       = { "ddddxxx" => "dengxiang2010@gmail.com" }
  s.ios.deployment_target = "8.0"
  s.osx.deployment_target = "10.9"
  s.tvos.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/ddddxxx/SwiftyOpenCC.git", :tag => "v#{s.version}", :submodules => true }
  s.source_files  = "Sources/*.{h,mm,swift}", "OpenCC/src/*.{hpp,cpp}", "OpenCC/deps/darts-clone/darts.h", "OpenCC/deps/rapidjson-0.11/**/*.h", "OpenCC/deps/tclap-1.2.1/tclap/*.h"
  s.exclude_files = "OpenCC/src/*Test.{hpp,cpp}", "OpenCC/src/*TestBase.{hpp,cpp}"
  s.public_header_files = "Sources/*.h"
  s.resources = "Sources/Config/*", "Sources/Dictionary/*", "OpenCC/data/dictionary/*", "OpenCC/data/config/*"
  s.preserve_paths = "Sources/module.modulemap"
  s.requires_arc = true
  s.xcconfig = { "SWIFT_INCLUDE_PATHS" => "$(PODS_TARGET_SRCROOT)/Sources" }
  s.pod_target_xcconfig = { "SWIFT_VERSION" => "4.0" }
end
