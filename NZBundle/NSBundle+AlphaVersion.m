//
//  NSBundle+AlphaVersion.m
//  NZBundle
//
//  Created by Bruno Tortato Furtado on 08/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NSBundle+AlphaVersion.h"

static NSString *const kCFBundleShortVersionString = @"CFBundleShortVersionString";
static NSString *const kCFBundleInitialShortVersionString = @"CFBundleInitialShortVersionString";

@implementation NSBundle (AlphaVersion)

#pragma mark -
#pragma mark - Public methods

- (NSString *)initialShortVersion
{
    NSString *initialShortVersion = [self.infoDictionary objectForKey:kCFBundleInitialShortVersionString];
    
    if (!initialShortVersion) {
        [self saveInitialShortVersion];
    }
    
    return [self.infoDictionary objectForKey:kCFBundleInitialShortVersionString];
}

- (void)setupShortVersion
{
    [self setupShortVersionForDevelopment:@"a alpha"
                          andDistribution:@"a"];
}

- (void)setupShortVersionForDevelopment:(NSString *)development andDistribution:(NSString *)distribution
{    
    NSMutableString *newVersion = [[NSMutableString alloc] init];
    [newVersion appendString:[self initialShortVersion]];
    
#ifdef DEBUG
    [newVersion appendString:development];
#else
    [newVersion appendString:distribution];
#endif
    
    [self.infoDictionary setValue:newVersion forKey:kCFBundleShortVersionString];
    
#ifdef NZDEBUG
    NSLog(@"%s\nShort version changed to \"%@\".", __PRETTY_FUNCTION__, newVersion);
#endif
}

- (NSString *)shortVersion
{
    return [self.infoDictionary objectForKey:kCFBundleShortVersionString];
}

#pragma mark -
#pragma mark - Private methods

- (void)saveInitialShortVersion
{
    NSString *initialVersion = [self shortVersion];
    [self.infoDictionary setValue:initialVersion forKey:kCFBundleInitialShortVersionString];
    
#ifdef NZDEBUG
    NSLog(@"%s\nInitial short version saved in the Info.plist project file.", __PRETTY_FUNCTION__);
#endif
}

@end