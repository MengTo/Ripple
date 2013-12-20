//
//  ViewController.m
//  Ripple
//
//  Created by Meng To on 29/11/13.
//  Copyright (c) 2013 Meng To. All rights reserved.
//

#import "ViewController.h"
#import "CSAnimationView.h"
#import "UIView+SimpleMotionEffects.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	
    // Motion effects
    [self.listView addMotionEffectWithMovement:CGPointMake(20, 20)];
    
    // Change bar style to light
    [self setNeedsStatusBarAppearanceUpdate];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (IBAction)buttonDidPress:(id)sender {
    [self.listView startCanvasAnimation];
}

@end
