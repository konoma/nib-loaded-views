
Pod::Spec.new do |s|
  
  # ―――  Spec Metadata  ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.name         = "KNMNibLoadedViews"
  s.version      = "1.2.0"
  s.summary      = "Support for views loaded from NIB/XIB files"
  
  s.description  = <<-DESC
Provides subclasses of UIView, UIControl, UITableViewCell and UICollectionViewCell that load their content from a NIB/XIB file.
If the XIB file has the same name as the view subclass, ususally no futher configuration is needed.

There's a simple example project in the repo which demonstrates the basic functionality of the library.
DESC
  
  s.homepage     = "https://github.com/konoma/nib-loaded-views"
  
  
  # ―――  Spec License  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.license      = { :type => 'MIT', :file => 'LICENSE' }
  
  
  # ――― Author Metadata  ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.author       = { "Markus Gasser" => "markus.gasser@konoma.ch" }
  
  
  # ――― Platform Specifics ――――――――――――――――――――――――――――――――――――――――――――――――――――――― #

  s.ios.deployment_target = '7.0'
  
  
  # ――― Source Location ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.source       = { :git => "https://github.com/konoma/nib-loaded-views.git", :tag => "1.2.0" }
  
  
  # ――― Source Code ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.source_files  = 'Sources/**/*.{h,m}'
  s.public_header_files = 'Sources/**/*.h'
  s.private_header_files = 'Sources/KNMNibViewLoader.h'
  

  # ――― Project Linking ―――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.ios.frameworks = 'Foundation', 'UIKit'
  
  
  # ――― Project Settings ――――――――――――――――――――――――――――――――――――――――――――――――――――――――― #
  
  s.requires_arc = true
  
end