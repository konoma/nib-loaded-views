//
//  KNMNibViewLoader.m
//  KNMNibViews
//
//  Created by Markus Gasser on 05.06.14.
//  Copyright (c) 2014 konoma GmbH. All rights reserved.
//

#import "KNMNibViewLoader.h"


@interface KNMNibViewLoader ()

@property (nonatomic, readonly) NSString *nibName;
@property (nonatomic, readonly) NSBundle *nibBundle;

@end


@implementation KNMNibViewLoader

#pragma mark - Initialization

+ (NSMutableDictionary *)loaderRegistry {
    static dispatch_once_t onceToken;
    static NSMutableDictionary *registry;
    dispatch_once(&onceToken, ^{
        registry = [NSMutableDictionary dictionary];
    });
    return registry;
}

+ (instancetype)loaderForNibNamed:(NSString *)nibName inBundle:(NSBundle *)nibBundle {
    NSParameterAssert(nibName != nil);
    NSParameterAssert(nibBundle != nil);
    
    KNMNibViewLoader *loader = [[self loaderRegistry] objectForKey:nibName];
    if (loader == nil) {
        loader = [[self alloc] initWithNibName:nibName bundle:nibBundle];
        [[self loaderRegistry] setObject:loader forKey:nibName];
    }
    return loader;
}

+ (NSString *)defaultNibNameForClass:(Class)cls {
    return [NSStringFromClass(cls) componentsSeparatedByString:@"."].lastObject; // split class name from swift module
}

- (instancetype)initWithNibName:(NSString *)nibName bundle:(NSBundle *)nibBundle {
    NSParameterAssert(nibName != nil);
    NSParameterAssert(nibBundle != nil);
    
    if ((self = [super init])) {
        _nibName = nibName;
        _nibBundle = nibBundle;
    }
    return self;
}


#pragma mark - Getting Views

@synthesize nib = _nib;

- (UINib *)nib {
    if (_nib == nil) {
        _nib = [UINib nibWithNibName:self.nibName bundle:self.nibBundle];
        if (_nib == nil) {
            NSString *reason = [NSString stringWithFormat:@"Nib file '%@' could not be loaded", self.nibName];
            @throw [NSException exceptionWithName:NSInvalidArgumentException reason:reason userInfo:nil];
        }
    }
    return _nib;
}

- (UIView *)loadContentFromNibWithOwner:(id)owner contentViewIndex:(NSUInteger)contentViewIndex options:(NSDictionary *)options {
    NSArray *objects = [self.nib instantiateWithOwner:owner options:options];
    
    if (objects.count <= contentViewIndex || ![objects[contentViewIndex] isKindOfClass:[UIView class]]) {
        NSString *reason = [NSString stringWithFormat:@"Object at index %ld does not exist or is not a view", (unsigned long)contentViewIndex];
        @throw [NSException exceptionWithName:NSInvalidArgumentException reason:reason userInfo:nil];
    }
    return objects[contentViewIndex];
}

@end
