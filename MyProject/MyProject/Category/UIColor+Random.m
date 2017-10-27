//
//  UIColor+Random.m
//  Exhibitors
//
//  Created by nwwl on 13-10-23.
//  Copyright (c) 2013年 nwwl. All rights reserved.
//

#import "UIColor+Random.h"

@implementation UIColor (Random)
+ (UIColor *)randomColor{
    CGFloat red = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat blue = (CGFloat)random()/(CGFloat)RAND_MAX;
    CGFloat green = (CGFloat)random()/(CGFloat)RAND_MAX;
    return [UIColor colorWithRed:red green:green blue:blue alpha:1.0f];
}
@end
