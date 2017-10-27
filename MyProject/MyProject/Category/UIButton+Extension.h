//
//  UIButton+Extension.h
//  Lakala
//
//  Created by bob on 6/29/13.
//  Copyright (c) 2013 sike. All rights reserved.
//

//对UIButton做基础的扩展,主要包括控件的初始化,简单的样式外观
//仅限于控件的基本定制,深度定制请继承UIButton做相关实现

#import <UIKit/UIKit.h>

@interface UIButton (Extension)

#pragma mark - factory method


//创建RoundedRect button
+(UIButton *)createButton:(CGRect)rect                //rect是传递过来的button frame
                    title:(NSString *)title           //title是button上面显示的文字
                titleSize:(float)size                 //titleSize是button显示的文字大小
                   action:(SEL)selection              //selection是点击button的响应方法
                addTarget:(id)addTarget;              //追加响应者  哪个id 响应它



//创建RoundedRect button tag
+(UIButton *)createButton:(CGRect)rect                //rect是传递过来的button frame
                    title:(NSString *)title           //title是button上面显示的文字
                titleSize:(float)size                 //titleSize是button显示的文字大小
                   action:(SEL)selection              //selection是点击button的响应方法
                addTarget:(id)addTarget               //追加响应者  哪个id 响应它
                      tag:(NSInteger)tag;             //当前button的tag 


//创建选择图片的button 只有单一响应的效果 
+ (UIButton *)createButton:(CGRect)rect                 //rect是传递过来的button frame
               normalImage:(NSString *)normalImage      //imageName 是button默认的背景图
                    action:(SEL)selection               //selection是点击button的响应方法
                 addTarget:(id)addTarget;               //追加响应者  哪个id 响应它


//创建选择图片的button
+ (UIButton *)createButton:(CGRect)rect                 //rect是传递过来的button frame
               normalImage:(NSString *)normalImage      //imageName 是button默认的背景图
               selectImage:(NSString *)selectImage      //selectImage是点击后 改变的背景图
                    action:(SEL)selection               //selection是点击button的响应方法
                 addTarget:(id)addTarget;               //追加响应者  哪个id 响应它


//创建选择图片的button tag
+ (UIButton *)createButton:(CGRect)rect                 //rect是传递过来的button frame
               normalImage:(NSString *)normalImage      //imageName 是button默认的背景图
               selectImage:(NSString *)selectImage      //selectImage是点击后 改变的背景图
                    action:(SEL)selection               //selection是点击button的响应方法
                 addTarget:(id)addTarget                //追加响应者  哪个id 响应它
                       tag:(NSInteger)tag;              //当前button的tag 


//创建按钮控件button
+ (UIButton *)createButton:(CGRect)rect                                         //rect是传递过来的button frame
               normalBackGroundImage:(NSString *)normalBackGroundImage          //imageName 是button默认的背景图
               selectBackGroundImage:(NSString *)selectBackGroundImage          //selectImage是点击后 改变的背景图
                     title:(NSString *)title                                    //title是button上面显示的文字
                 titleSize:(float)size                                          //titleSize是button显示的文字大小
                    action:(SEL)selection                                       //selection是点击button的响应方法
                 addTarget:(id)addTarget;                                       //追加响应者  哪个id 响应它

//创建按钮控件button tag
+ (UIButton *)createButton:(CGRect)rect                                         //rect是传递过来的button frame
               normalBackGroundImage:(NSString *)normalBackGroundImage          //imageName 是button默认的背景图
               selectBackGroundImage:(NSString *)selectBackGroundImage          //selectImage是点击后 改变的背景图
                     title:(NSString *)title                                    //title是button上面显示的文字
                 titleSize:(float)size                                          //titleSize是button显示的文字大小
                    action:(SEL)selection                                       //selection是点击button的响应方法
                 addTarget:(id)addTarget                                        //追加响应者  哪个id 响应它
                       tag:(NSInteger)tag;                                      //当前button的tag 










@end
