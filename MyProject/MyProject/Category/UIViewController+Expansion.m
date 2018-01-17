//
//  UIViewController+Expansion.m
//  MyProject
//
//  Created by 孝禹苏 on 2018/1/17.
//  Copyright © 2018年 sike. All rights reserved.
//

#import "UIViewController+Expansion.h"

@implementation UIViewController (Expansion)


- (UINavigationController*)myNavigationController
{
    UINavigationController* nav = nil;
    if ([self isKindOfClass:[UINavigationController class]]) {
        nav = (id)self;
    }
    else {
        if ([self isKindOfClass:[UITabBarController class]]) {
            nav = ((UITabBarController*)self).selectedViewController.myNavigationController;
        }
        else {
            nav = self.navigationController;
        }
    }
    return nav;
}

@end
