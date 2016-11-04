//
//  CustomVerticalLabel+Extension.h
//  Lakala
//
//  Created by sike on 13-7-2.
//  Copyright (c) 2013年 sike. All rights reserved.
//

#import "CustomVerticalLabel.h"

@interface CustomVerticalLabel (Extension)


//创建控件Label

+ (CustomVerticalLabel *)createLabel:(CGRect)rect                       //rect是传递过来的Label frame
                                text:(NSString *)text                   //title是Label上面显示的文字
                            textSize:(float)size;                       //titleSize是Label显示的文字大小





//创建控件Label 带有tag标示

+ (CustomVerticalLabel *)createLabel:(CGRect)rect                       //rect是传递过来的Label frame
                                text:(NSString *)text                   //title是Label上面显示的文字
                            textSize:(float)size                        //titleSize是Label显示的文字大小
                                 tag:(NSInteger)tag;                    //当前Title的Tag


- (CGSize)boundingRectWithSize:(CGSize)size;

@end
