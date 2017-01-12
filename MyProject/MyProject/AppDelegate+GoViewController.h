//
//  AppDelegate+GoViewController.h
//  MyProject
//
//  Created by sike on 2017/1/12.
//  Copyright © 2017年 sike. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate (GoViewController)


/**
 *  进入登录页
 */
-(void)goLoginVC;


/**
 *  跳转界面
 */
- (void)push:(NSDictionary *)params;

@end
