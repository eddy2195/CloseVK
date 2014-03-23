//
//  CoincidenceFriendCell.h
//  CloseVK
//
//  Created by Саша on 23.03.14.
//  Copyright (c) 2014 6guys. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface CoincidenceFriendCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UIImageView *friendsAvatar;
@property (weak, nonatomic) IBOutlet UILabel *friendsName;
@property (weak, nonatomic) IBOutlet UILabel *friendsTown;
@property (weak, nonatomic) IBOutlet UILabel *friendsAge;

@end
