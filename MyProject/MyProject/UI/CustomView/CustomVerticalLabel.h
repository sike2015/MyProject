//
//  CustomVerticalLabel.h
//  Lakala
//
//  Created by sike on 13-7-2.
//  Copyright (c) 2013年 sike. All rights reserved.
//

#import <UIKit/UIKit.h>


/* 自定义一组CustomVerticalLabel枚举 
 * VerticalAlignmentTop表示 文字顶部对齐
 * VerticalAlignmentMiddle 文字中部对齐
 * VerticalAlignmentBottom 文字底部对齐
 */


typedef enum VerticalAlignment {
    VerticalAlignmentTop,
    VerticalAlignmentMiddle,
    VerticalAlignmentBottom,
} VerticalAlignment;

@interface CustomVerticalLabel : UILabel{
@private
    VerticalAlignment verticalAlignment_;
}
@property (nonatomic, assign) VerticalAlignment verticalAlignment;
@end
