//
//  KNMNibViewLoader.h
//  KNMNibViews
//
//  Created by Markus Gasser on 05.06.14.
//  Copyright (c) 2014 konoma GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface KNMNibViewLoader : NSObject

+ (instancetype)loaderForNibNamed:(NSString *)nibName inBundle:(NSBundle *)bundle;

@property (nonatomic, readonly) UINib *nib;

- (UIView *)loadContentFromNibWithOwner:(id)owner contentViewIndex:(NSUInteger)contentViewIndex options:(NSDictionary *)options;

@end
