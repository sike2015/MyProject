//
//  AppDelegate.m
//  MyProject
//
//  Created by sike on 2016/10/26.
//  Copyright © 2016年 sike. All rights reserved.
//

#import "AppDelegate.h"
#import <JSPatchPlatform/JSPatch.h>

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    // Override point for customization after application launch.
    
//    [JSPatch startWithAppKey:@"d4c7b6428f8a5a6e"];
//    [JSPatch sync];
    
    
    
    [JSPatch testScriptInBundle];
    
    [JSPatch setupCallback:^(JPCallbackType type, NSDictionary *data, NSError *error) {
        switch (type) {
            case JPCallbackTypeUnknow: {
                NSLog(@"末知 %@ %@", data, error);
                break;
            }
            case JPCallbackTypeRunScript: {
                NSLog(@"执行脚本 %@ %@", data, error);
                break;
            }
            case JPCallbackTypeUpdate: {
                NSLog(@"脚本有更新 %@ %@", data, error);
                break;
            }
                
            case JPCallbackTypeUpdateDone: {
                NSLog(@"已获取更新%@ %@", data, error);
                break;
            }
                
            case JPCallbackTypeCondition: {
                NSLog(@"条件下发 %@ %@", data, error);
                break;
            }
            case JPCallbackTypeGray: {
                NSLog(@"灰度下发%@ %@", data, error);
                break;
            }
                
            default:
                break;
        }
    }];
    
    return YES;
}


- (void)applicationWillResignActive:(UIApplication *)application {
    // Sent when the application is about to move from active to inactive state. This can occur for certain types of temporary interruptions (such as an incoming phone call or SMS message) or when the user quits the application and it begins the transition to the background state.
    // Use this method to pause ongoing tasks, disable timers, and invalidate graphics rendering callbacks. Games should use this method to pause the game.
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
    // Use this method to release shared resources, save user data, invalidate timers, and store enough application state information to restore your application to its current state in case it is terminated later.
    // If your application supports background execution, this method is called instead of applicationWillTerminate: when the user quits.
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
    // Called as part of the transition from the background to the active state; here you can undo many of the changes made on entering the background.
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
    // Restart any tasks that were paused (or not yet started) while the application was inactive. If the application was previously in the background, optionally refresh the user interface.
}


- (void)applicationWillTerminate:(UIApplication *)application {
    // Called when the application is about to terminate. Save data if appropriate. See also applicationDidEnterBackground:.
}


@end
