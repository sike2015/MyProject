//
//  CustNavigationBar.m
//  Exhibition
//
//  Created by suxiaoyu on 12-10-10.
//  Copyright (c) 2012年 suxiaoyu. All rights reserved.
//
#import <QuartzCore/QuartzCore.h>
#import "CustNavigationBar.h"
#import "UIColor+colorWithHexString.h"

@interface CustNavigationBar()
@property (nonatomic,strong) UIView *contentView;  //当前View
@end

@implementation CustNavigationBar
@synthesize shadowNeeded = _shadowNeeded;
@synthesize titleLabel = _titleLabel;

- (id)initWithFrame:(CGRect)frame{
    if (self =[super initWithFrame:frame]) {
        self.userInteractionEnabled = YES; //开启点击事件

        //当前View
        self.contentView = [[UIView alloc]initWithFrame:CGRectMake(kBaseOriginX,20, kBaseWidth, kNavigationBarHeight-20)];
        self.contentView.backgroundColor = [UIColor clearColor];
        [self addSubview:self.contentView];
        
        
        //标题        
        self.titleLabel = [[UILabel alloc] initWithFrame:self.contentView.bounds];
        self.titleLabel.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin;
        self.titleLabel.backgroundColor = [UIColor clearColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.textColor = [UIColor blackColor];
        self.titleLabel.font = kFont18;       //设置字体大小
        [self.contentView addSubview:self.titleLabel];
        
    }
    return self;
}


 //设置背景颜色
- (void)setCustNavigationBarBackGround:(UIColor *)color{
    self.backgroundColor = color;
}

- (void)layoutSubviews
{
    if (self.shadowNeeded) {
        self.contentView.layer.shadowOffset = CGSizeMake(1.0f, 1.0f);
        self.contentView.layer.shadowOpacity = 0.5f;
        self.contentView.layer.shadowRadius = 2.0f;
        self.contentView.layer.shouldRasterize = YES;
        self.contentView.layer.shadowColor = [UIColor blackColor].CGColor;
        
        UIBezierPath *path = [UIBezierPath bezierPathWithRect:self.contentView.bounds];
        self.contentView.layer.shadowPath = path.CGPath;
    }
}



@end
