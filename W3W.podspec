Pod::Spec.new do |s|
  s.name         = "W3W"
  s.version      = "0.0.1"
  s.summary      = "Swift3 What3Words API client"
  s.description  = <<-EOS
  What3Words API Client https://docs.what3words.com/api/v2/
  EOS
  s.homepage     = "https://github.com/marcbaldwin/W3W"
  s.license      = { :type => "MIT", :file => "License.md" }
  s.author       = { "Marc Baldwin" => "marc.baldwin88@gmail.com" }
  s.ios.deployment_target = '8.0'
  s.source       = { :git => "https://github.com/marcbaldwin/W3W.git", :tag => s.version }
  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files  = "W3W/"
    ss.dependency "Moya", "~> 8.0.2"

    ss.framework  = "Foundation"
  end

end
