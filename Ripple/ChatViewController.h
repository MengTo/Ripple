//
//  ChatViewController.h
//  Ripple
//
//  Created by Meng To on 9/12/13.
//  Copyright (c) 2013 Meng To. All rights reserved.
//

#import "ViewController.h"

@interface ChatViewController : ViewController
@property (weak, nonatomic) IBOutlet UIView *listView;
- (IBAction)listButtonDidPress:(id)sender;

@end
