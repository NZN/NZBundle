//
//  NZViewController.m
//  NZBundle
//
//  Created by Bruno Tortato Furtado on 08/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZViewController.h"
#import "NSBundle+AlphaVersion.h"

@interface NZViewController ()

@property (strong, nonatomic) IBOutlet UILabel *lbDefault;
@property (strong, nonatomic) IBOutlet UILabel *lbCustomized;

- (IBAction)defaultClicked;
- (IBAction)customizedClicked;

- (NSString *)randomicVersion;
- (void)refreshData;

@end



@implementation NZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    [self refreshData];
}

#pragma mark -
#pragma mark - Actions

- (IBAction)customizedClicked
{
    [[NSBundle mainBundle] setupShortVersionForDevelopment:[self randomicVersion]
                                           andDistribution:[self randomicVersion]];
    
    [self refreshData];
}

- (IBAction)defaultClicked
{
    [[NSBundle mainBundle] setupShortVersion];
    [self refreshData];
}

#pragma mark -
#pragma mark - Private methods

- (NSString *)randomicVersion
{
    short capacity = 6;
    NSString *values = @"abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ0123456789";
    NSMutableString *string = [[NSMutableString alloc] initWithCapacity:capacity];
    
    for (short i=0; i < capacity; i++) {
        [string appendFormat: @"%C", [values characterAtIndex: arc4random() % [values length]]];
    }
    
    return string;
}

- (void)refreshData
{
    self.lbDefault.text = [[[NSBundle mainBundle] infoDictionary] objectForKey:kCFBundleInitialShortVersionString];
    self.lbCustomized.text = [[[NSBundle mainBundle] infoDictionary] objectForKey:kCFBundleShortVersionString];
}

@end
