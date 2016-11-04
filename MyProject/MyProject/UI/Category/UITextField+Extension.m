//
//  UITextField+Extension.m
//  Lakala
//
//  Created by sike on 13-7-1.
//  Copyright (c) 2013年 sike. All rights reserved.
//

#import "UITextField+Extension.h"

@implementation UITextField (Extension)



//创建控件TextField 

+ (UITextField *)createTextField:(CGRect)rect               //rect是传递过来的textField frame
                            text:(NSString *)text           //title是textField上面预显示的文字
                        textSize:(float)size                //titleSize是textField显示的文字大小
{
    UITextField *textField = [[UITextField alloc]init ];
    textField.frame = rect;
    textField.backgroundColor = [UIColor clearColor];
    textField.placeholder = text;
    textField.font = [UIFont systemFontOfSize:size];
    return textField;
}


//创建控件TextField  tag
+ (UITextField *)createTextField:(CGRect)rect               //rect是传递过来的textField frame
                            text:(NSString *)text           //title是textField上面显示的文字
                        textSize:(float)size                //titleSize是textField显示的文字大小
                             tag:(NSInteger)tag             //当前textField tag
{
    UITextField *textField  = [self createTextField:rect text:text textSize:size];
    textField.tag = tag;
    return textField;
}


@end
