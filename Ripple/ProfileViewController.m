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

- (void)viewDidLoad
{
    [super viewDidLoad];
    
    [self setNeedsStatusBarAppearanceUpdate];
}

- (void)viewDidAppear:(BOOL)animated {
    [super viewDidAppear:animated];
    
    [self.view startCanvasAnimation];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

@end
