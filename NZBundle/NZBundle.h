//
//  NZBundle.h
//  NZBundle
//
//  Created by Bruno Tortato Furtado on 08/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface NZBundle : NSBundle

+ (void)setShortVersionForDevelopment:(NSString *)development
                      andDistribution:(NSString *)distribution;

+ (void)setupShortVersion;

@end