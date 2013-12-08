//
//  NZBundle.m
//  NZBundle
//
//  Created by Bruno Tortato Furtado on 08/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZBundle.h"
#import "NSBundle+AlphaVersion.h"

@implementation NZBundle

#pragma mark -
#pragma mark - NSBundle

+ (void)load
{
#ifdef NZDEBUG
    NSLog(@"%s", __PRETTY_FUNCTION__);
#endif
    
    [super load];
    
    [[NSBundle mainBundle] saveInitialShortVersion];
    [self setupShortVersion];
}

#pragma mark -
#pragma mark - Public methods

+ (void)setShortVersionForDevelopment:(NSString *)development andDistribution:(NSString *)distribution
{
    [[NSBundle mainBundle] setupShortVersionForDevelopment:development andDistribution:distribution];
}

+ (void)setupShortVersion
{
    [[NSBundle mainBundle] setupShortVersion];
}

@end