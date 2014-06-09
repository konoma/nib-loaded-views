//
//  KNMSampleView.m
//  KNMNibLoadedViews
//
//  Created by Markus Gasser on 09.06.14.
//  Copyright (c) 2014 konoma GmbH. All rights reserved.
//

#import "KNMSampleView.h"


@implementation KNMSampleView

- (void)awakeFromNib
{
    [super awakeFromNib];
    
    self.label.font = [UIFont boldSystemFontOfSize:20.0f];
}

@end
