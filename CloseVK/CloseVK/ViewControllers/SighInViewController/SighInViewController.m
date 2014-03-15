//
//  SighInViewController.m
//  CloseVK
//
//  Created by Alexander on 3/15/14.
//  Copyright (c) 2014 6guys. All rights reserved.
//

#import "SighInViewController.h"

@interface SighInViewController ()

@end

@implementation SighInViewController

- (id)initWithNibName:(NSString *)nibNameOrNil bundle:(NSBundle *)nibBundleOrNil
{
    self = [super initWithNibName:nibNameOrNil bundle:nibBundleOrNil];
    if (self) {
        // Custom initialization
    }
    return self;
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)loginButtonClick:(id)sender {
    NSLog(@"login button click");
}

- (void)didReceiveMemoryWarning
{
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
