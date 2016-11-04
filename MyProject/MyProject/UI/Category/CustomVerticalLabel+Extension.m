//
//  CustomVerticalLabel+Extension.m
//  Lakala
//
//  Created by sike on 13-7-2.
//  Copyright (c) 2013年 sike. All rights reserved.
//

#import "CustomVerticalLabel+Extension.h"

@implementation CustomVerticalLabel (Extension)

//创建控件Label

+ (CustomVerticalLabel *)createLabel:(CGRect)rect                   //rect是传递过来的Label frame
                                text:(NSString *)text               //title是Label上面显示的文字
                            textSize:(float)size                    //titleSize是Label显示的文字大小
{
    CustomVerticalLabel *label = [[self alloc] init];
    label.frame = rect;
    label.backgroundColor = [UIColor clearColor];
    label.text = text;
    label.font = [UIFont systemFontOfSize:size];
    return label;
}



//创建控件Label  带有tag标示

+ (CustomVerticalLabel *)createLabel:(CGRect)rect                   //rect是传递过来的Label frame
                                text:(NSString *)text               //title是Label上面显示的文字
                            textSize:(float)size                    //titleSize是Label显示的文字大小
                                 tag:(NSInteger)tag                 //当前Title的Tag
{
    CustomVerticalLabel *label = [self createLabel:rect text:text textSize:size];
    label.tag = tag;
    return label;
}

- (CGSize)boundingRectWithSize:(CGSize)size
{
    NSDictionary *attribute = @{NSFontAttributeName: self.font};
    
    CGSize retSize = [self.text boundingRectWithSize:size
                                             options:\
                      NSStringDrawingTruncatesLastVisibleLine |
                      NSStringDrawingUsesLineFragmentOrigin |
                      NSStringDrawingUsesFontLeading
                                          attributes:attribute
                                             context:nil].size;
    
    return retSize;
}



@end
