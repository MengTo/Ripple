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

- (IBAction)buttonAnimate:(id)sender {
    [self.listView startCanvasAnimation];
}

@end
