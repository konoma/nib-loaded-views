//
//  KNMNibLoadedControl.h
//  KNMNibLoadedViews
//
//  Created by Markus Gasser on 09.02.15.
//  Copyright (c) 2015 konoma GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN


/// A UIControl subclass that loads its content from an associated XIB/NIB file.
///
@interface KNMNibLoadedControl : UIControl

/// The name of the nib file to use.
///
/// By default returns the class name of the receiver.
///
+ (NSString *)nibName;

/// The index of the content view within the nibs objects.
///
/// Default is 0.
///
+ (NSUInteger)nibContentViewIndex;

/// Options to use when instantiating the nib.
///
/// Default is nil.
///
+ (nullable NSDictionary *)nibLoadingOptions;

/// The UINib instance used to load content views of your subclass.
///
+ (UINib *)nib;

@end


NS_ASSUME_NONNULL_END
