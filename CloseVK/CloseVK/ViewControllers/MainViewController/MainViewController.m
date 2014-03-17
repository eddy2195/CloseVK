//
//  MainViewController.m
//  CloseVK
//
//  Created by Alexander on 3/16/14.
//  Copyright (c) 2014 6guys. All rights reserved.
//

#import "MainViewController.h"

@interface MainViewController ()

@end

@implementation MainViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    self.navigationController.navigationBarHidden = NO;
    self.title = @"Choose Your Destiny";
    UIBarButtonItem *settingsButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemAction target:self action:nil];
    self.navigationItem.leftBarButtonItem = settingsButton;
    UIBarButtonItem *likeButton = [[UIBarButtonItem alloc]initWithBarButtonSystemItem:UIBarButtonSystemItemDone target:self action:nil];
    self.navigationItem.rightBarButtonItem = likeButton;
    
    
}



@end
