//
//  KNMNibLoadedControl.h
//  KNMNibLoadedViews
//
//  Created by Markus Gasser on 09.02.15.
//  Copyright (c) 2015 konoma GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface KNMNibLoadedControl : UIControl

/**
 The name of the nib file to use.
 
 By default returns nil which means the nib name is the class name.
 */
+ (NSString *)nibName;

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

/**
 The UINib instance used to load content views of your subclass.
 */
+ (UINib *)nib;

@end
