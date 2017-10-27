//
//  UIView+Expand.h
//  MyProject
//
//  Created by sike on 2016/11/4.
//  Copyright © 2016年 sike. All rights reserved.
//

#import <UIKit/UIKit.h>
@class BlankView;
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



- (UIViewController *)viewController;

//使用默认加载失败图片
-(void)userConfigView:(NSString *)imageName showName:(NSString *)showName ReloadButtonBlock:(void(^)(id sender))block;


@end



@interface BlankView : UIView
@property (nonatomic, copy) void(^reloadButtonBlock)(id sender);
- (void)configView:(NSString *)imageName showName:(NSString *)showName ReloadButtonBlock:(void(^)(id sender))block;
@end
