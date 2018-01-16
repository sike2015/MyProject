//
//  UIButton+EnlargeEdge.h
//  MyProject
//
//  Created by 孝禹苏 on 2018/1/16.
//  Copyright © 2018年 sike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIButton (EnlargeEdge)

/**
 *  扩大button点击区域(4边扩大相同值)
 */
@property (nonatomic, assign) CGFloat enlargedEdge;

/**
 *  扩大button点击区域(4边分别设置)
 */
-(void)setEnlargedEdgeWithTop:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right;

@end
