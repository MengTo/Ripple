//
//  ViewController.m
//  Ripple
//
//  Created by Meng To on 29/11/13.
//  Copyright (c) 2013 Meng To. All rights reserved.
//

#import "ViewController.h"
#import "CSAnimationView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
    
    [self setNeedsStatusBarAppearanceUpdate];
}

-(UIStatusBarStyle)preferredStatusBarStyle{
    return UIStatusBarStyleLightContent;
}

- (IBAction)buttonDidPress:(id)sender {
    [self.listView startCanvasAnimation];
}

@end
