//
//  UIButton+EnlargeEdge.m
//  MyProject
//
//  Created by 孝禹苏 on 2018/1/16.
//  Copyright © 2018年 sike. All rights reserved.
//

#import "UIButton+EnlargeEdge.h"

@implementation UIButton (EnlargeEdge)

static char topEdgeKey;
static char leftEdgeKey;
static char bottomEdgeKey;
static char rightEdgeKey;



-(void)setEnlargedEdge:(CGFloat)enlargedEdge
{
    [self setEnlargedEdgeWithTop:enlargedEdge left:enlargedEdge bottom:enlargedEdge right:enlargedEdge];
}
-(void)setEnlargedEdgeWithTop:(CGFloat)top left:(CGFloat)left bottom:(CGFloat)bottom right:(CGFloat)right
{
    objc_setAssociatedObject(self, &topEdgeKey, [NSNumber numberWithFloat:top], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &leftEdgeKey, [NSNumber numberWithFloat:left], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &bottomEdgeKey, [NSNumber numberWithFloat:bottom], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
    objc_setAssociatedObject(self, &rightEdgeKey, [NSNumber numberWithFloat:right], OBJC_ASSOCIATION_RETAIN_NONATOMIC);
}
-(CGFloat)enlargedEdge
{
    return [(NSNumber *)objc_getAssociatedObject(self, &topEdgeKey) floatValue];
}
-(CGRect)enlargedRect
{
    NSNumber *topEdge = objc_getAssociatedObject(self, &topEdgeKey);
    NSNumber *leftEdge = objc_getAssociatedObject(self, &leftEdgeKey);
    NSNumber *bottomEdge = objc_getAssociatedObject(self, &bottomEdgeKey);
    NSNumber *rightEdge = objc_getAssociatedObject(self, &rightEdgeKey);
    
    if(topEdge && leftEdge && bottomEdge && rightEdge)
    {
        CGRect enlargedRect = CGRectMake(self.bounds.origin.x-leftEdge.floatValue, self.bounds.origin.y - topEdge.floatValue, self.bounds.size.width+ leftEdge.floatValue +rightEdge.floatValue, self.bounds.size.height+topEdge.floatValue+bottomEdge.floatValue);
        return enlargedRect;
    }
    
    return self.bounds;
    
}
-(UIView *)hitTest:(CGPoint)point withEvent:(UIEvent *)event
{
    if(self.alpha <= 0.01 || !self.userInteractionEnabled ||self.hidden)
    {
        return nil;
    }
    CGRect enlargedRect = [self enlargedRect];
    return CGRectContainsPoint(enlargedRect, point) ? self: nil;
}


@end
