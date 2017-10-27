//
//  UIButton+Extension.m
//  Lakala
//
//  Created by bob on 6/29/13.
//  Copyright (c) 2013 sike. All rights reserved.
//

#import "UIButton+Extension.h"

@implementation UIButton (Extension)


//创建RoundedRect button
+(UIButton *)createButton:(CGRect)rect                //rect是传递过来的button frame
                    title:(NSString *)title           //title是button上面显示的文字
                titleSize:(float)size                 //titleSize是button显示的文字大小
                   action:(SEL)selection              //selection是点击button的响应方法
                addTarget:(id)addTarget               //追加响应者  哪个id 响应它
{
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.titleLabel.font = [UIFont fontWithName:@"ArialMT" size:size];
    button.frame = rect;
    [button addTarget:addTarget
               action:selection
     forControlEvents:UIControlEventTouchUpInside];
    [button setTitle:title forState:UIControlStateNormal];
    return button;
}


//创建RoundedRect button tag
+(UIButton *)createButton:(CGRect)rect                //rect是传递过来的button frame
                    title:(NSString *)title           //title是button上面显示的文字
                titleSize:(float)size                 //titleSize是button显示的文字大小
                   action:(SEL)selection              //selection是点击button的响应方法
                addTarget:(id)addTarget               //追加响应者  哪个id 响应它
                      tag:(NSInteger)tag              //当前button的tag
{
    UIButton *button = [self createButton:rect
                                    title:title
                                titleSize:size
                                   action:selection
                                addTarget:addTarget];
    button.tag = tag;
    return button;
}



//创建选择图片的button 只有单一响应的效果
+ (UIButton *)createButton:(CGRect)rect                 //rect是传递过来的button frame
               normalImage:(NSString *)normalImage      //imageName 是button默认的背景图
                    action:(SEL)selection               //selection是点击button的响应方法
                 addTarget:(id)addTarget                //追加响应者  哪个id 响应它

{
    UIButton *button = [[UIButton alloc]initWithFrame:rect ];
    [button addTarget:addTarget
               action:selection
     forControlEvents:UIControlEventTouchUpInside];
    button.contentMode = UIViewContentModeScaleAspectFit;
    [button setImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    return button;
}

//创建选择图片的button
+ (UIButton *)createButton:(CGRect)rect                 //rect是传递过来的button frame
               normalImage:(NSString *)normalImage      //imageName 是button默认的背景图
               selectImage:(NSString *)selectImage      //selectImage是点击后 改变的背景图
                    action:(SEL)selection               //selection是点击button的响应方法
                 addTarget:(id)addTarget                //追加响应者  哪个id 响应它
{
    UIButton *button = [[UIButton alloc]initWithFrame:rect ];
    [button addTarget:addTarget
               action:selection
     forControlEvents:UIControlEventTouchUpInside];
    [button setImage:[UIImage imageNamed:normalImage] forState:UIControlStateNormal];
    [button setImage:[UIImage imageNamed:selectImage] forState:UIControlStateSelected];
    return button;
}

//创建选择图片的button tag
+ (UIButton *)createButton:(CGRect)rect                 //rect是传递过来的button frame
               normalImage:(NSString *)normalImage      //imageName 是button默认的背景图
               selectImage:(NSString *)selectImage      //selectImage是点击后 改变的背景图
                    action:(SEL)selection               //selection是点击button的响应方法
                 addTarget:(id)addTarget                //追加响应者  哪个id 响应它
                       tag:(NSInteger)tag               //当前button的tag
{
    UIButton *button = [self createButton:rect
                              normalImage:normalImage
                              selectImage:selectImage
                                   action:selection
                                addTarget:addTarget];
    button.tag = tag;
    return button;
}

//创建按钮控件button

+ (UIButton *)createButton:(CGRect)rect                                         //rect是传递过来的button frame
     normalBackGroundImage:(NSString *)normalBackGroundImage                    //imageName 是button默认的背景图
     selectBackGroundImage:(NSString *)selectBackGroundImage                    //selectImage是点击后 改变的背景图
                     title:(NSString *)title                                    //title是button上面显示的文字
                 titleSize:(float)size                                          //titleSize是button显示的文字大小
                    action:(SEL)selection                                       //selection是点击button的响应方法
                 addTarget:(id)addTarget                                        //追加响应者  哪个id 响应它
{
    
    UIButton *button = [UIButton buttonWithType:UIButtonTypeCustom];
    button.frame = rect;
    [button addTarget:addTarget
               action:selection
     forControlEvents:UIControlEventTouchUpInside];
    button.titleLabel.font = [UIFont systemFontOfSize:size];
    [button setBackgroundImage:[UIImage imageNamed:normalBackGroundImage] forState:UIControlStateNormal];
    [button setBackgroundImage:[UIImage imageNamed:selectBackGroundImage] forState:UIControlStateSelected];
    [button setTitle:title forState:UIControlStateNormal];
    return button;
}



//创建按钮控件button tag

+ (UIButton *)createButton:(CGRect)rect                                         //rect是传递过来的button frame
     normalBackGroundImage:(NSString *)normalBackGroundImage                    //imageName 是button默认的背景图
     selectBackGroundImage:(NSString *)selectBackGroundImage                    //selectImage是点击后 改变的背景图
                     title:(NSString *)title                                    //title是button上面显示的文字
                 titleSize:(float)size                                          //titleSize是button显示的文字大小
                    action:(SEL)selection                                       //selection是点击button的响应方法
                 addTarget:(id)addTarget                                        //追加响应者  哪个id 响应它
                       tag:(NSInteger)tag                                       //当前button的tag 
{
    UIButton *button = [self createButton:rect
                    normalBackGroundImage:normalBackGroundImage
                    selectBackGroundImage:selectBackGroundImage
                                    title:title titleSize:size
                                   action:selection
                                addTarget:addTarget ];
    button.tag = tag;
    return button;
}

@end
