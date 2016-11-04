//
//  UIView+UIViewController.m
//  MyMovie2
//
//  Created by wxhl_zy011 on 14-8-22.
//  Copyright (c) 2014年 www.iphonetrain.com. All rights reserved.
//

#import "UIView+UIViewController.h"

@implementation UIView (UIViewController)

- (UIViewController *)viewController
{
    UIResponder *next = self.nextResponder;
    do {
        if ([next isKindOfClass:[UIViewController class]]) {
            return (UIViewController *)next;
            break;
        }
        next = next.nextResponder;

    } while (next!=nil);
    
    return nil;
}


@end
