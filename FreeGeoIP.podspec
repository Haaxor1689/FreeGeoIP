Pod::Spec.new do |s|
	s.name        = "FreeGeoIP"
	s.platform    = :ios, "9.0"
	s.version     = "0.1.0"
	s.summary     = "Simple and lightweight pod for getting geolocation of you current IP."

	s.description = <<-DESC
			Use GeoIP.getInfo(aboutIP:withCompletion) to get the info about the provided IP or hostname. If optional IP parameter isn't provided, your current external IP is used instead.
			DESC

	s.license = { :type => "MIT", :file => "LICENSE" }
	s.author = { "Maroš Beťko" => "betkomaros@gmail.com" }
	s.social_media_url = "http://twitter.com/Haaxor1689"

	s.source   = { :git => "https://github.com/Haaxor1689/FreeGeoIP.git", :tag => "#{s.version}" }
	s.homepage = "https://github.com/Haaxor1689/FreeGeoIP.git"

	s.source_files        = "FreeGeoIP/**/*.swift"
	
	s.dependency 'ObjectMapper'
	s.requires_arc = true
end
