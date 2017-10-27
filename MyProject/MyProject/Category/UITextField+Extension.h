//
//  UITextField+Extension.h
//  Lakala
//
//  Created by sike on 13-7-1.
//  Copyright (c) 2013年 sike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UITextField (Extension)


//创建控件TextField 

+ (UITextField *)createTextField:(CGRect)rect               //rect是传递过来的textField frame
                            text:(NSString *)text           //title是textField上面显示的文字
                        textSize:(float)size;               //titleSize是textField显示的文字大小


//创建控件TextField tag 
+ (UITextField *)createTextField:(CGRect)rect               //rect是传递过来的textField frame
                            text:(NSString *)text           //title是textField上面预显示的文字
                        textSize:(float)size                //titleSize是textField显示的文字大小
                             tag:(NSInteger)tag;            //当前textField tag 

@end
