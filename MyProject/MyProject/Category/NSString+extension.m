//
//  NSString+Trimming.m
//  Clock
//
//  Created by 苏孝禹  on 12-8-5.
//  Copyright (c) 2012年 __MyCompanyName__. All rights reserved.
//

#import "NSString+Extension.h"

@implementation NSString (Extension)

/** 去空格 */
- (NSString *)trim {
    
    return [self stringByTrimmingCharactersInSet: [NSCharacterSet whitespaceCharacterSet]];
}

//返回文字高度 
- (CGSize)getSizeWithSizeWidth:(CGFloat)width font:(UIFont *)font
{
    CGSize size = CGSizeMake(width, CGFLOAT_MAX);
    NSDictionary *attribute = @{NSFontAttributeName:font};
    
    CGSize retSize = [self boundingRectWithSize:size
                                        options:
                      NSStringDrawingTruncatesLastVisibleLine |
                      NSStringDrawingUsesLineFragmentOrigin |
                      NSStringDrawingUsesFontLeading
                                     attributes:attribute
                                        context:nil].size;
    
    return retSize;
}

//根据指定的文字数量 返回宽度
- (CGRect)getCurrentLabel:(CustomVerticalLabel *)label{
    
    
    //重新设置宽度
    CGRect getCurrentSize = [label.text boundingRectWithSize:CGSizeMake(kBaseWidth-20, MAXFLOAT) options:NSStringDrawingUsesLineFragmentOrigin|NSStringDrawingUsesFontLeading attributes:@{NSFontAttributeName:label.font} context:nil];
    return getCurrentSize;
}


//判断一个字符串是不是 整数 
- (BOOL)isPureInt:(NSString*)string{
    
    
    if([string rangeOfString:@"."].length>0){
        return NO;
    }else{
        return YES;
    }
}

@end
