//
//  UIImage+ZTHColor.h
//  ztjyyd
//
//  Created by yzl on 16/7/2.
//  Copyright © 2016年 szy. All rights reserved.
//

#import <UIKit/UIKit.h>
#define UIImageFromNamed(_imageName_) [UIImage imageNamed:_imageName_]

@interface UIImage (ZTHColor)
+ (UIImage *)imageWithColor:(UIColor *)color andSize:(CGSize)size;
+ (UIImage *)imageWithColor:(UIColor *)color;  //button点击时 背景色变化

@end
