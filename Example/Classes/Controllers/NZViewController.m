//
//  NZViewController.m
//  NZBundle
//
//  Created by Bruno Tortato Furtado on 08/12/13.
//  Copyright (c) 2013 No Zebra Network. All rights reserved.
//

#import "NZViewController.h"
#import "NZBundle.h"

@interface NZViewController ()

@property (strong, nonatomic) IBOutlet UILabel *lbDefault;
@property (strong, nonatomic) IBOutlet UILabel *lbCustomized;
@property (strong, nonatomic) IBOutlet UILabel *lbStoryboardPhone;
@property (strong, nonatomic) IBOutlet UILabel *lbStoryboardPad;

- (IBAction)defaultClicked;
- (IBAction)customizedClicked;

- (NSString *)randomicVersion;
- (void)refreshData;

@end



@implementation NZViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    self.lbStoryboardPhone.text = [NZBundle mainStoryboardFileName];
    self.lbStoryboardPad.text = [NZBundle mainStoryboardFilePadName];
    
    [self refreshData];
}

#pragma mark -
#pragma mark - Actions

- (IBAction)customizedClicked
{
    [NZBundle setShortVersionForDevelopment:[self randomicVersion]
                            andDistribution:[self randomicVersion]];
    
    [self refreshData];
}

- (IBAction)defaultClicked
{
    [NZBundle setupShortVersion];
    
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
    self.lbDefault.text = [NZBundle initialShortVersion];
    self.lbCustomized.text = [NZBundle shortVersion];
}

@end
