//
//  LoadingViewController.m
//  CloseVK
//
//  Created by Alexander on 3/16/14.
//  Copyright (c) 2014 6guys. All rights reserved.
//

#import "LoadingViewController.h"
#import "MainViewController.h"

@interface LoadingViewController ()
@property (weak, nonatomic) IBOutlet UIActivityIndicatorView *activityIndicator;

@end

@implementation LoadingViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [self.activityIndicator startAnimating];
}
- (IBAction)nextScreenButtonClick:(id)sender {
    [self.activityIndicator stopAnimating];
    [self.navigationController pushViewController:[[MainViewController alloc]init] animated:YES];
}

@end
