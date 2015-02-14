//
//  KNMNibViewLoader.h
//  KNMNibViews
//
//  Created by Markus Gasser on 05.06.14.
//  Copyright (c) 2014 konoma GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>


@interface KNMNibViewLoader : NSObject

+ (instancetype)loaderForNibNamed:(NSString *)nibName orClass:(Class)cls inBundle:(NSBundle *)nibBundle;

@property (nonatomic, readonly) UINib *nib;

- (UIView *)loadContentFromNibWithOwner:(id)owner contentViewIndex:(NSUInteger)contentViewIndex options:(NSDictionary *)options;

@end


#define IMPLEMENT_NIB_VIEW_CONFIGURATION \
+ (KNMNibViewLoader *)_knm_nibViewLoader { return [KNMNibViewLoader loaderForNibNamed:[self nibName] orClass:self inBundle:[NSBundle bundleForClass:self]]; }\
+ (NSString *)nibName { return nil; }\
+ (NSUInteger)nibContentViewIndex { return 0; }\
+ (NSDictionary *)nibLoadingOptions { return nil; }\
+ (UINib *)nib { return [[self _knm_nibViewLoader] nib]; }
