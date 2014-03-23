//
//  MainViewController.m
//  CloseVK
//
//  Created by Alexander on 3/16/14.
//  Copyright (c) 2014 6guys. All rights reserved.
//

#import "MainViewController.h"
#import "SettingsViewController.h"
#import "CoincidenceViewController.h"
@interface MainViewController ()

@end

@implementation MainViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    self.title = @"Choose Your Destiny";
    UIBarButtonItem *settingsButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:@selector(settingsButtonClick:)];
    self.navigationItem.leftBarButtonItem = settingsButton;
    
    UIBarButtonItem *likeButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:@selector(coincidenceButtonClick:)];
    self.navigationItem.rightBarButtonItem = likeButton;
    
    
}

-(void) viewWillAppear:(BOOL)animated
{
    [self.navigationController.navigationBar setHidden:NO];
}

-(IBAction)settingsButtonClick:(id)sender
{
    [self.navigationController pushViewController:[[SettingsViewController alloc]init] animated:YES];
}

-(IBAction)coincidenceButtonClick:(id)sender
{
    [self.navigationController pushViewController:[[CoincidenceViewController alloc]init] animated:YES];
}

@end
