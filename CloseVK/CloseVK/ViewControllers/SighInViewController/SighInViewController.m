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
@property (weak, nonatomic) IBOutlet UITextField *loginTextField;
@property (weak, nonatomic) IBOutlet UITextField *passwordTextField;

@end

@implementation SighInViewController


- (void)viewDidLoad
{
    [super viewDidLoad];
    [VKSdk initializeWithDelegate:self andAppId:@"4260433"];
    // Do any additional setup after loading the view from its nib.
}
- (IBAction)loginButtonClick:(id)sender {
    [VKSdk authorize:[NSArray arrayWithObjects:self.loginTextField.text, self.passwordTextField.text, nil]];
    if(VK_API_ACCESS_TOKEN){
        
        [self.navigationController pushViewController:[[LoadingViewController alloc]init] animated:YES];
    }
    
    NSLog(@"login button click");
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
