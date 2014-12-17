//
//  ViewController.m
//  Chat
//
//  Created by Ming Gong on 12/16/14.
//  Copyright (c) 2014 Ming Gong. All rights reserved.
//

#import "JoininViewController.h"
#import "AFHTTPRequestOperationManager.h"
#import "AFHTTPRequestOperation.h"
#import "MainViewController.h"


@interface JoininViewController ()

@end

@implementation JoininViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)handleJoinin:(id)sender {
    NSString *name = self.nameField.text;
    NSLog(@"your name: %@", name);

    AFHTTPRequestOperationManager *manager = [AFHTTPRequestOperationManager manager];
    NSDictionary *parameters = @{
            @"user[name]": name,
            @"user[avator_url]": @"https://avatars0.githubusercontent.com/u/4431171?v=3&s=460"};
    [manager POST:@"http://192.168.43.69:3000/users.json" parameters:parameters success:^(AFHTTPRequestOperation *operation, id responseObject) {
        NSLog(@"name: %@", responseObject);
        [[NSUserDefaults standardUserDefaults] setObject:responseObject forKey: @"currentUser"];
        [[NSUserDefaults standardUserDefaults] synchronize];
        MainViewController *mainViewController = [[UIStoryboard storyboardWithName:@"Main" bundle:nil]
                instantiateViewControllerWithIdentifier: @"MainViewController"];
        [self presentViewController: mainViewController animated:YES completion:nil];
    } failure:^(AFHTTPRequestOperation *operation, NSError *error) {
        NSLog(@"Error: %@", error);
    }];
    
}
@end
