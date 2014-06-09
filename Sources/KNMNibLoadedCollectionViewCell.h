//
//  KNMNibLoadedCollectionViewCell.h
//  KNMNibViews
//
//  Created by Markus Gasser on 05.06.14.
//  Copyright (c) 2014 konoma GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>


/**
 A UICollectionViewCell subclass that loads its content from an associated XIB/NIB file.
 */
@interface KNMNibLoadedCollectionViewCell : UICollectionViewCell

/**
 The name of the nib file to use.
 
 By default returns nil which means the nib name is the class name.
 */
+ (NSString *)nibName;

/**
 The UINib instance used to load content views of your subclass.
 */
+ (UINib *)nib;

/**
 The index of the content view within the nibs objects.
 
 Default is 0.
 */
+ (NSUInteger)nibContentViewIndex;

/**
 Options to use when instantiating the nib.
 
 Default is nil.
 */
+ (NSDictionary *)nibLoadingOptions;

@end
