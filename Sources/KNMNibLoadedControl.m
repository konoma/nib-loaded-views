//
//  KNMNibLoadedControl.m
//  KNMNibLoadedViews
//
//  Created by Markus Gasser on 09.02.15.
//  Copyright (c) 2015 konoma GmbH. All rights reserved.
//

#import "KNMNibLoadedControl.h"
#import "KNMNibViewLoader.h"


@implementation KNMNibLoadedControl

#pragma mark - Initialization

- (instancetype)initWithFrame:(CGRect)frame
{
    if ((self = [super initWithFrame:frame])) {
        [self _knm_loadNibContentView];
    }
    return self;
}

- (instancetype)initWithCoder:(NSCoder *)decoder
{
    if ((self = [super initWithCoder:decoder])) {
        [self _knm_loadNibContentView];
    }
    return self;
}

- (void)_knm_loadNibContentView
{
    UIView *nibView = [[[self class] _knm_nibViewLoader] loadContentFromNibWithOwner:self
                                                                    contentViewIndex:[[self class] nibContentViewIndex]
                                                                             options:[[self class] nibLoadingOptions]];
    nibView.frame = self.bounds;
    nibView.translatesAutoresizingMaskIntoConstraints = YES;
    nibView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    [self addSubview:nibView];
}


#pragma mark - Configuration

+ (KNMNibViewLoader *)_knm_nibViewLoader
{
    return [KNMNibViewLoader loaderForNibNamed:([self nibName] ?: NSStringFromClass(self)) inBundle:[NSBundle bundleForClass:self]];
}

+ (NSString *)nibName
{
    return nil;
}

+ (NSUInteger)nibContentViewIndex
{
    return 0;
}

+ (NSDictionary *)nibLoadingOptions
{
    return nil;
}

+ (UINib *)nib
{
    return [[self _knm_nibViewLoader] nib];
}

@end