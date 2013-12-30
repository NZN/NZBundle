//
//  NSBundle+Storyboards.m
//  NZBundle
//
//  Created by Bruno Tortato Furtado on 30/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NSBundle+Storyboards.h"

static NSString *const kUIMainStoryboardFile = @"UIMainStoryboardFile";
static NSString *const kUIMainStoryboardFilePad = @"UIMainStoryboardFile~ipad";

@implementation NSBundle (Storyboards)

- (NSString *)mainStoryboardFileName
{
    return [self.infoDictionary objectForKey:kUIMainStoryboardFile];
}

- (NSString *)mainStoryboardFilePadName
{
    return [self.infoDictionary objectForKey:kUIMainStoryboardFilePad];
}

@end
