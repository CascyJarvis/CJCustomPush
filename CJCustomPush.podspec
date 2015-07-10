Pod::Spec.new do |s|


  s.name         = "CJCustomPush"
  s.version      = "0.0.2"
  s.summary      = "A Custom Model View based on Pop Framework."

  s.description  = <<-DESC
                   A longer description of CJCustomPush in Markdown format.

                   * Think: Why did you write this? What is the focus? What does it do?
                   * CocoaPods will be using this to generate tags, and improve search results.
                   * Try to keep it short, snappy and to the point.
                   * Finally, don't worry about the indent, CocoaPods strips it!
                   DESC

  s.homepage     = "https://github.com/CascyJarvis/CJCustomPush"
  

  s.license      = "MIT"

  s.author       = { "CascyJarvis" => "jarvis.gjj@gmail.com" }
 
  s.platform     = :ios, "7.0"

  s.source       = { :git => "https://github.com/CascyJarvis/CJCustomPush.git", :tag => "0.0.2" }
  #  s.source   = { :git => "$HOME/CJCustomPush", :tag=>"0.0.1"}

  s.source_files  = "CJCustomPush/Classes", "CJCustomPush/Classes/**/*.{h,m}"
  # s.exclude_files = "Classes/Exclude"

  # s.public_header_files = "Classes/**/*.h"

  s.requires_arc = true
  
  s.dependency "pop", "~> 1.0.0"

end
