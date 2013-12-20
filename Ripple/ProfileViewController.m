//
//  ProfileViewController.m
//  Ripple
//
//  Created by Meng To on 20/12/13.
//  Copyright (c) 2013 Meng To. All rights reserved.
//

#import "ProfileViewController.h"
#import "CSAnimationView.h"

@interface ProfileViewController ()

@end

@implementation ProfileViewController

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.view startCanvasAnimation];
}

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setNeedsStatusBarAppearanceUpdate];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (IBAction)facebookDidPress:(id)sender {
    NSString *link = [NSString stringWithFormat:@"http://facebook.com/mengto"];
            [[UIApplication sharedApplication] openURL:[NSURL URLWithString: link]];
}

- (IBAction)twitterDidPress:(id)sender {
    NSString *link = [NSString stringWithFormat:@"http://twitter.com/mengto"];
    [[UIApplication sharedApplication] openURL:[NSURL URLWithString: link]];
}

- (IBAction)profileDidPress:(id)sender {
    self.bioLabel.text = @"Tapped!";
}

@end
