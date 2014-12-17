//
//  MomentsViewController.m
//  Chat
//
//  Created by Ming Gong on 12/17/14.
//  Copyright (c) 2014 Ming Gong. All rights reserved.
//

#import "MomentsViewController.h"
#import "UIImageView+AFNetworking.h"
#import "UIImageView+WebCache.h"
#import <QuartzCore/QuartzCore.h>

@interface MomentsViewController ()

@property (weak, nonatomic) IBOutlet UIImageView *userImage;

@property (weak, nonatomic) IBOutlet UILabel *userName;
@end

@implementation MomentsViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    NSDictionary *currentUser = [[NSUserDefaults standardUserDefaults] objectForKey:@"currentUser"];
    self.userName.text = [currentUser objectForKey:@"name"];
    
    [self.userImage sd_setImageWithURL:[NSURL URLWithString:@"https://avatars0.githubusercontent.com4431171?v=3&s=460"]
                      placeholderImage: [UIImage imageNamed:@"placeholder.jpeg"]];

    self.userImage.layer.borderWidth = 4;
    self.userImage.layer.borderColor = [UIColor yellowColor].CGColor;
    self.userImage.layer.cornerRadius = self.userImage.frame.size.width / 2.0;
    self.userImage.clipsToBounds = YES;


}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
