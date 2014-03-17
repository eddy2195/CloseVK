//
//  SighInViewController.m
//  CloseVK
//
//  Created by Alexander on 3/15/14.
//  Copyright (c) 2014 6guys. All rights reserved.
//

#import "SighInViewController.h"
#import "MainViewController.h"
#import "LoadingViewController.h"

@interface SighInViewController ()

@end

@implementation SighInViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)loginButtonClick:(id)sender {
    [self.navigationController pushViewController:[[LoadingViewController alloc]init] animated:YES];
    NSLog(@"login button click");
}

@end
