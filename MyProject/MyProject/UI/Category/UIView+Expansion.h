//
//  UIView+Expand.h
//  MyProject
//
//  Created by sike on 2016/11/4.
//  Copyright © 2016年 sike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIView (Expand)
@property CGPoint origin;
@property CGSize size;

@property (readonly) CGPoint bottomLeft;
@property (readonly) CGPoint bottomRight;
@property (readonly) CGPoint topRight;

@property CGFloat height;
@property CGFloat width;

@property CGFloat top;
@property CGFloat left;

@property CGFloat bottom;
@property CGFloat right;

- (void) moveBy: (CGPoint) delta;
- (void) scaleBy: (CGFloat) scaleFactor;
- (void) fitInSize: (CGSize) aSize;
@end
