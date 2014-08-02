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