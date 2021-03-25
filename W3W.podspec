Pod::Spec.new do |s|
  s.name         = "W3W"
  s.version      = "2.0.0"
  s.summary      = "Swift What3Words API client"
  s.description  = <<-EOS
  What3Words API Client https://docs.what3words.com/api/v2/
  EOS
  s.homepage     = "https://github.com/marcbaldwin/W3W"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author       = { "Marc Baldwin" => "marc.baldwin88@gmail.com" }
  s.source       = { :git => "https://github.com/marcbaldwin/W3W.git", :tag => s.version }
  s.ios.deployment_target = '10.0'
  s.swift_version = '5'
  s.default_subspec = "Core"

  s.subspec "Core" do |ss|
    ss.source_files  = "W3W/"
    ss.framework  = 'Foundation'
    ss.dependency 'Moya', '~> 14'
  end

end
