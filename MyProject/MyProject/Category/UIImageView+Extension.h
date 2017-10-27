//
//  UIImageView+Extension.h
//  Lakala
//
//  Created by bob on 6/29/13.
//  Copyright (c) 2013 sike. All rights reserved.
//
//对UIImageView做基础的扩展,主要包括控件的初始化,简单的样式外观
//仅限于控件的基本定制,深度定制请继承UIImageView做相关实现
#import <UIKit/UIKit.h>

@interface UIImageView (Extension)


//创建按钮控件ImageView

+ (UIImageView *)createImageView:(CGRect)rect                //rect是传递过来的ImageView frame
                     normalImage:(NSString *)imageNamePath;     //imageNamePath为传递过来的图片路径





//创建按钮控件ImageView 带有tag标示 

+ (UIImageView *)createImageView:(CGRect)rect                 //rect是传递过来的ImageView frame
                     normalImage:(NSString *)imageNamePath       //imageNamePath为传递过来的图片路径
                             tag:(NSInteger)tag;                 //当前imageView tag  

@end
