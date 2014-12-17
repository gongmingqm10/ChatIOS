//
//  ViewController.h
//  Chat
//
//  Created by Ming Gong on 12/16/14.
//  Copyright (c) 2014 Ming Gong. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface JoininViewController : UIViewController

@property (weak, nonatomic) IBOutlet UITextField *nameField;

- (IBAction)handleJoinin:(id)sender;

@end

