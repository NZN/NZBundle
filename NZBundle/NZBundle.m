//
//  NZBundle.m
//  NZBundle
//
//  Created by Bruno Tortato Furtado on 08/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZBundle.h"
#import "NSBundle+AlphaVersion.h"
#import "NSBundle+Storyboards.h"

@implementation NZBundle

#pragma mark -
#pragma mark - Public methods

+ (NSString *)initialShortVersion
{
    return [[NSBundle mainBundle] initialShortVersion];
}

+ (NSString *)mainStoryboardFileName
{
    return [[NSBundle mainBundle] mainStoryboardFileName];
}

+ (NSString *)mainStoryboardFilePadName
{
    return [[NSBundle mainBundle] mainStoryboardFilePadName];
}

+ (void)setShortVersionForDevelopment:(NSString *)development andDistribution:(NSString *)distribution
{
    [[NSBundle mainBundle] setupShortVersionForDevelopment:development andDistribution:distribution];
}

+ (void)setupShortVersion
{
    [[NSBundle mainBundle] setupShortVersion];
}

+ (NSString *)shortVersion
{
    return [[NSBundle mainBundle] shortVersion];
}

@end