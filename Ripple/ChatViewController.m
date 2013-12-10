//
//  ChatViewController.m
//  Ripple
//
//  Created by Meng To on 9/12/13.
//  Copyright (c) 2013 Meng To. All rights reserved.
//

#import "ChatViewController.h"
#import "CSAnimationView.h"

@interface ChatViewController ()

@end

@implementation ChatViewController

- (void)viewDidLoad
{
    [super viewDidLoad];
	// Do any additional setup after loading the view.
}

- (IBAction)listButtonDidPress:(id)sender {
    self.listView.hidden = FALSE;
    [self.listView startCanvasAnimation];
}

@end
