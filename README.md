Nib Loaded Views
================

Support for views loaded from NIB/XIB files.

## Installation

Via [CocoaPods](http://cocoapods.org), add the following to your `Podfile`:

    pod 'KNMNibLoadedViews'


## Usage

Create a view subclass of one of the provided base classes (`KNMNibLoadedView`, `KNMNibLoadedControl`,
`KNMNibLoadedCollectionViewCell`, `KNMNibLoadedTableViewCell`). Then add a view XIB file with the same name
as your subclass. In the XIB set the file owner to your class and start designing your view. If you need
outlets to your subviews, drag them from the file owner to the desired views.

At runtime you can instantiate your views as you would do normally using `-initWithFrame:` or by
adding them to storyboards. `KNMNibLoadedView` loads the view from the nib and adds it to your view hierarchy
automatically.
