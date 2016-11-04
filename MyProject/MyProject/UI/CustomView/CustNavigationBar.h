//
//  CustNavigationBar.h
//  Exhibition
//
//  Created by suxiaoyu on 12-10-10.
//  Copyright (c) 2012年 suxiaoyu. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "CustomVerticalLabel+Extension.h"
@interface CustNavigationBar : UIImageView


@property (nonatomic) BOOL shadowNeeded;           //是否需要阴影 
@property (nonatomic,strong) UILabel *titleLabel; //标题
@property (nonatomic,strong) UIView *contentView;
- (id)initWithBackgroundImage:(UIImage *)backGroundImage; 
- (id)initWithFrame:(CGRect)frame;
- (void)setCustNavigationBarBackGround:(UIColor *)color; //设置背景颜色 
@end



