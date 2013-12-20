//
//  AppDelegate.m
//  Ripple
//
//  Created by Meng To on 29/11/13.
//  Copyright (c) 2013 Meng To. All rights reserved.
//

#import "AppDelegate.h"

@implementation AppDelegate

- (BOOL)application:(UIApplication *)application willFinishLaunchingWithOptions:(NSDictionary *)launchOptions
{
    
    // NavigationBar Custom Font
    UIFont *navBarFont = [UIFont fontWithName:@"MuseoSans-300" size:18];
    [[UINavigationBar appearance] setBarTintColor:[UIColor colorWithRed:(0.2471) green:(0.5686) blue:(0.8118) alpha:(1)]];
    [[UINavigationBar appearance] setTitleTextAttributes:@{
                                                           NSForegroundColorAttributeName: [UIColor colorWithRed:(1) green:(1) blue:(1) alpha:(1)],
                                                           NSFontAttributeName:navBarFont
                                                           }];
    
    [[UIBarButtonItem appearance] setTitleTextAttributes:@{
                                                           NSForegroundColorAttributeName: [UIColor colorWithRed:(1) green:(1) blue:(1) alpha:(1)],
                                                           NSFontAttributeName:navBarFont
                                                           }
                                                forState:UIControlStateNormal];
    
    return YES;
}
							
- (void)applicationWillResignActive:(UIApplication *)application
{
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and throttle down OpenGL ES frame rates. Games should use this method to pause the game.
}

- (void)applicationDidEnterBackground:(UIApplication *)application
{
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later. 
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}

- (void)applicationWillEnterForeground:(UIApplication *)application
{
    // Called as part of the transition from the background to the inactive state; here you can undo many of the changes made on entering the background.
}

- (void)applicationDidBecomeActive:(UIApplication *)application
{
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}

- (void)applicationWillTerminate:(UIApplication *)application
{
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}

@end
