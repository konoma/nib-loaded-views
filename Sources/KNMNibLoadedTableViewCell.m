//
//  KNMNibLoadedTableViewCell.m
//  KNMNibViews
//
//  Created by Markus Gasser on 05.06.14.
//  Copyright (c) 2014 konoma GmbH. All rights reserved.
//

#import "KNMNibLoadedTableViewCell.h"
#import "KNMNibViewLoader.h"


@implementation KNMNibLoadedTableViewCell

IMPLEMENT_NIB_VIEW_CONFIGURATION

#pragma mark - Initialization

- (instancetype)initWithStyle:(UITableViewCellStyle)style reuseIdentifier:(NSString *)reuseIdentifier
{
    if ((self = [super initWithStyle:style reuseIdentifier:reuseIdentifier])) {
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
    nibView.frame = self.contentView.bounds;
    nibView.translatesAutoresizingMaskIntoConstraints = YES;
    nibView.autoresizingMask = (UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight);
    [self.contentView addSubview:nibView];
}

@end
