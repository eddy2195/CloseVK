//
//  SettingsViewController.m
//  CloseVK
//
//  Created by Саша on 23.03.14.
//  Copyright (c) 2014 6guys. All rights reserved.
//

#import "SettingsViewController.h"
#import "MainViewController.h"
@interface SettingsViewController ()

@end

@implementation SettingsViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.navigationController.navigationBar setHidden:YES];
}


- (IBAction)closeSettingsClick:(id)sender {
    [self.navigationController popViewControllerAnimated:YES];
}

@end
