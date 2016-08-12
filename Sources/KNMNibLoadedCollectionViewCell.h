//
//  KNMNibLoadedCollectionViewCell.h
//  KNMNibViews
//
//  Created by Markus Gasser on 05.06.14.
//  Copyright (c) 2014 konoma GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN


/// A UICollectionViewCell subclass that loads its content from an associated XIB/NIB file.
///
@interface KNMNibLoadedCollectionViewCell : UICollectionViewCell

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
