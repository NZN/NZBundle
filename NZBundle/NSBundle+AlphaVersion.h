//
//  NSBundle+AlphaVersion.h
//  NZBundle
//
//  Created by Bruno Tortato Furtado on 08/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import <Foundation/Foundation.h>

extern NSString *const kCFBundleShortVersionString;
extern NSString *const kCFBundleInitialShortVersionString;

@interface NSBundle (AlphaVersion)

- (void)saveInitialShortVersion;

- (void)setupShortVersion;

- (void)setupShortVersionForDevelopment:(NSString *)development
                        andDistribution:(NSString *)distribution;

@end