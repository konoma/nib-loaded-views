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


## Noteworthy Infos

The view you create in your XIB file will be added whole as a subview to you actual view. This means for example
that changing the background color of your `KNMNibLoadedView` will not be visible at runtime if the XIB view has
itself a solid background color. Change the color of your XIB view to clear if you intend to change the background
color of your view.

For `KNMNibLoadedControl` subclasses the root view in the XIB will be excluded from `-hitTest:withEvent:`. This is
to prevent your XIB view from stealing touches that should be received by the control. If you do really need a
subview that will swallow all touches you need to add another view on top of the root view that does the job.
