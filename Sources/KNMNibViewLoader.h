//
//  KNMNibViewLoader.h
//  KNMNibViews
//
//  Created by Markus Gasser on 05.06.14.
//  Copyright (c) 2014 konoma GmbH. All rights reserved.
//

#import <UIKit/UIKit.h>


NS_ASSUME_NONNULL_BEGIN


@interface KNMNibViewLoader : NSObject

+ (instancetype)loaderForNibNamed:(NSString *)nibName inBundle:(NSBundle *)nibBundle;

+ (NSString *)defaultNibNameForClass:(Class)cls;

@property (nonatomic, readonly) UINib *nib;

- (UIView *)loadContentFromNibWithOwner:(nullable id)owner contentViewIndex:(NSUInteger)contentViewIndex options:(nullable NSDictionary *)options;

@end


#define IMPLEMENT_NIB_VIEW_CONFIGURATION \
+ (KNMNibViewLoader *)_knm_nibViewLoader { return [KNMNibViewLoader loaderForNibNamed:[self nibName] inBundle:[NSBundle bundleForClass:self]]; }\
+ (NSString *)nibName { return [KNMNibViewLoader defaultNibNameForClass:self]; }\
+ (NSUInteger)nibContentViewIndex { return 0; }\
+ (NSDictionary *)nibLoadingOptions { return nil; }\
+ (UINib *)nib { return [[self _knm_nibViewLoader] nib]; }


NS_ASSUME_NONNULL_END
