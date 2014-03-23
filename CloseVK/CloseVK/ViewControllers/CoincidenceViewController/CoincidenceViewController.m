//
//  CoincidenceViewController.m
//  CloseVK
//
//  Created by Саша on 23.03.14.
//  Copyright (c) 2014 6guys. All rights reserved.
//

#import "CoincidenceViewController.h"
#import "CoincidenceFriendCell.h"
#import <QuartzCore/QuartzCore.h>

@interface CoincidenceViewController ()

@property (weak, nonatomic) IBOutlet UITableView *coincidenceFriendTable;
@end

@implementation CoincidenceViewController



- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self.coincidenceFriendTable registerNib:[UINib nibWithNibName:@"CoincidenceFriendCell" bundle:nil] forCellReuseIdentifier:@"CoincidenceFriendCell"];
    self.title = @"Coincidences";
}


#pragma mark - Table View Delegate

-(NSInteger)numberOfSectionsInTableView:(UITableView *)tableView
{
    return 1;
}


- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 5;
}



- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
 
    CoincidenceFriendCell *cell = [self.coincidenceFriendTable dequeueReusableCellWithIdentifier:@"CoincidenceFriendCell"];
    cell.layer.borderColor = [[UIColor grayColor ]CGColor];

    if (cell == nil)
    {
        cell = [[CoincidenceFriendCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"CoincidenceFriendCell"];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath
{
    
}

- (void)vkSdkNeedCaptchaEnter:(VKError *)captchaError
{
    NSLog(@"Captcha Error");
}

- (void)vkSdkTokenHasExpired:(VKAccessToken *)expiredToken
{
    NSLog(@"SDK Token has expired");
}

- (void)vkSdkUserDeniedAccess:(VKError *)authorizationError
{
    NSLog(@"User denied access");
}

- (void)vkSdkShouldPresentViewController:(UIViewController *)controller
{
    NSLog(@"Present ViewController");
}

- (void)vkSdkReceivedNewToken:(VKAccessToken *)newToken
{
    NSLog(@"Received new token");
}






@end
