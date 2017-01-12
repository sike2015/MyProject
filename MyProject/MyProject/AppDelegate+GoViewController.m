//
//  AppDelegate+GoViewController.m
//  MyProject
//
//  Created by sike on 2017/1/12.
//  Copyright © 2017年 sike. All rights reserved.
//

#import "AppDelegate+GoViewController.h"
#import "LoginViewController.h"

@implementation AppDelegate (GoViewController)

/**
 *  进入登录页
 */
-(void)goLoginVC{
    
    LoginViewController *loginVC = [[LoginViewController alloc]init ];
    [self.window.rootViewController presentViewController:loginVC
                                                 animated:YES completion:^{
        
                                                 }];
    
}

@end
