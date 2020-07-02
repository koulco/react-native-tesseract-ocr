require "json"

package = JSON.parse(File.read(File.join(__dir__, "package.json")))

Pod::Spec.new do |s|
  s.name         = "react-native-tesseract-ocr"
  s.version      = package["2.0.0"]
  s.summary      = package["Tesseract OCR wrapper for React Native"]
  s.description  = <<-DESC
                  react-native-tesseract-ocr
                   DESC
  s.homepage     = "https://github.com/jonathanpalma/react-native-tesseract-ocr"
  # brief license entry:
  s.license      = "MIT"
  # optional - use expanded license entry instead:
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.authors      = { "Jonathan Palma" => "jonathanpalma.me@gmail.com" }
  s.platforms    = { :ios => "9.0" }
  s.source       = { :git => "https://github.com/jonathanpalma/react-native-tesseract-ocr.git", :tag => "#{s.version}" }

  s.source_files = "ios/**/*.{h,c,m,swift}"
  s.requires_arc = true

  s.dependency "React"
end

