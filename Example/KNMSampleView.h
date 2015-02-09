//
//  KNMSampleView.h
//  KNMNibLoadedViews
//
//  Created by Markus Gasser on 09.06.14.
//  Copyright (c) 2014 konoma GmbH. All rights reserved.
//

#import "KNMNibLoadedView.h"

#ifndef IB_DESIGNABLE
#define IB_DESIGNABLE
#endif


IB_DESIGNABLE
@interface KNMSampleView : KNMNibLoadedView

@property (nonatomic, weak) IBOutlet UILabel *label;

@end
