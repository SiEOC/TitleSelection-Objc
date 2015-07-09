//
//  AppDelegate.m
//  TitleSelection
//
//  Created by Joshua Howland on 8/23/14.
//  Copyright (c) 2014 DevMountain. All rights reserved.
//

#import "AppDelegate.h"
#import "ViewController.h"

@interface AppDelegate ()

@end

@implementation AppDelegate
            

- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    self.window = [[UIWindow alloc] initWithFrame:[[UIScreen mainScreen] bounds]];

    self.window.rootViewController = [[UINavigationController alloc] initWithRootViewController:[ViewController new]]; // RootView
    
    self.window.backgroundColor = [UIColor purpleColor];
    
    [self.window makeKeyAndVisible];
    
    
    
    
    return YES;
}


@end
