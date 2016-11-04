//
//  UIImageView+Extension.m
//  Lakala
//
//  Created by bob on 6/29/13.
//  Copyright (c) 2013 sike. All rights reserved.
//

#import "UIImageView+Extension.h"

@implementation UIImageView (Extension)


//创建按钮控件ImageView
+ (UIImageView *)createImageView:(CGRect)rect                  //rect是传递过来的ImageView frame
                     normalImage:(NSString *)imageNamePath     //imageNamePath为传递过来的图片路径
{
    UIImageView *imageView = [[UIImageView alloc]init ];
    imageView.frame = rect;
    if (imageNamePath.length >0) {
        UIImage *getImage = GET_IMAGE_RESOURCE(imageNamePath, @"");
        imageView.image = getImage;
    }
    return imageView;
}


//创建按钮控件ImageView 带有tag标示

+ (UIImageView *)createImageView:(CGRect)rect                    //rect是传递过来的ImageView frame
                     normalImage:(NSString *)imageNamePath       //imageNamePath为传递过来的图片路径
                             tag:(NSInteger)tag                  //当前imageView tag
{
    UIImageView *imageView = [self createImageView:rect normalImage:imageNamePath];
    imageView.tag = tag;
    return imageView;
}

@end
