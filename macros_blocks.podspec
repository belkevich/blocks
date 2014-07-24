Pod::Spec.new do |s|
  s.name         = "macros_blocks"
  s.version      = "0.0.2"
  s.summary      = "Useful macros for objective-c blocks."
  s.homepage     = "https://github.com/belkevich/blocks"
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  s.author       = { "Alexey Belkevich" => "belkevich.alexey@gmail.com" }
  s.source       = { :git => "https://github.com/belkevich/blocks.git", :tag => s.version.to_s }
  s.requires_arc = true
  s.ios.deployment_target = "5.0"
  s.osx.deployment_target = "10.7"
  s.social_media_url      = 'https://twitter.com/okolodev'

  s.subspec 'core' do |sp|
    sp.source_files = 'macros_blocks.h'
  end

  s.subspec 'extra' do |sp|
    sp.source_files = 'macros_extra.h'
  end

  s.subspec 'all' do |sp|
    sp.source_files = 'macros_all.h'
    sp.dependency 'macros_blocks/core'
    sp.dependency 'macros_blocks/extra'
  end

  s.default_subspecs = 'core'

end
