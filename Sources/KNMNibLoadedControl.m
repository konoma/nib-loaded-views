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

IMPLEMENT_NIB_VIEW_CONFIGURATION

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
    [self insertSubview:nibView atIndex:0];
}

@end
