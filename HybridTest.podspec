Pod::Spec.new do |s|
  s.name                = "HybridTest"
  s.version             = "1.0.1"
  s.license             = "MIT"
  s.homepage            = "https://github.com/umangarya336/HybridTest"
  s.author              = { "umang" => "umang@arya.in"  }

  s.summary             = "Test Test Test TestTest Test Test TestTest Test Test TestTest Test Test Test"
  s.description         = "Test Test Test TestTest Test Test TestTest Test Test TestTest Test Test TestTest Test Test TestTest Test Test Test"

  s.source              = { :git => "https://github.com/umangarya336/HybridTest.git",
                            :tag => "#{s.version}"
                          }
  s.ios.deployment_target = "11.0"
  s.vendored_frameworks = 'HybridTest.framework'

end