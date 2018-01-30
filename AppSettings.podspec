Pod::Spec.new do |s|
  s.name         = "AppSettings"
  s.version      = "1.0.1"
  s.summary      = "Tool that allows automatic serialization and deserialization of objects to NSDictionary."
  s.description  = <<-DESC

                  `AppSettings` is a simple tool that allows automatic serialization
                  and deserialization of objects to `NSDictionary` with writing and reading them from `NSUserDefaults`.
                  Originally created to simply manage app settings in `NSUserDefaults`

                   DESC

  s.homepage     = "https://github.com/burczyk/AppSettings"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Kamil Burczyk" => "kamil.burczyk@gmail.com" }
  s.social_media_url   = "http://twitter.com/KamilBurczyk"
  s.platform     = :ios
  s.source       = { :git => "https://github.com/burczyk/AppSettings.git", :tag => "#{s.version}" }
  s.source_files = "AppSettings"
  s.requires_arc = true
end
