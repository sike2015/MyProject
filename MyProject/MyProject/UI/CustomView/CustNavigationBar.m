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

@end

@implementation CustNavigationBar
@synthesize shadowNeeded = _shadowNeeded;
@synthesize titleLabel = _titleLabel;

- (id)initWithFrame:(CGRect)frame{
    if (self =[super initWithFrame:frame]) {
        self.userInteractionEnabled = YES; //开启点击事件
        CGRect titleLabelFrame = CGRectMake(self.bounds.origin.x+150, self.bounds.origin.y,250 , CGRectGetHeight(self.bounds));
        //当前contentView
        self.contentView = [[UIView alloc]initWithFrame:self.bounds ];
        self.contentView.userInteractionEnabled = YES;
        [self addSubview:self.contentView];
        
        //标题        
        self.titleLabel = [[UILabel alloc] initWithFrame:titleLabelFrame];
        self.titleLabel.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin;
        self.titleLabel.backgroundColor = [UIColor clearColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.textColor = [UIColor colorWithHexString:@"#333333"];
        self.titleLabel.font = [UIFont systemFontOfSize:18.0f];       //设置字体大小
//        self.titleLabel.font = [UIFont boldSystemFontOfSize:18.0f];   //设置字体粗细
        self.titleLabel.center = CGPointMake(CGRectGetWidth(self.bounds) * 0.5, CGRectGetHeight(self.bounds) * 0.5);
        
        [self addSubview:self.titleLabel];
        
    }
    return self;
}

- (id)initWithBackgroundImage:(UIImage *)backGroundImage{
    if (self = [super initWithImage:backGroundImage]) {
        
        self.userInteractionEnabled = YES; //开启点击事件
        CGRect titleLabelFrame = CGRectMake(self.bounds.origin.x+150, self.bounds.origin.y,self.bounds.size.width+200 , CGRectGetHeight(self.bounds));
        //当前contentView
        self.contentView = [[UIView alloc]initWithFrame:self.bounds ];
        [self addSubview:self.contentView];
        
        //标题
        self.titleLabel = [[UILabel alloc] initWithFrame:titleLabelFrame];
        self.titleLabel.autoresizingMask = UIViewAutoresizingFlexibleRightMargin | UIViewAutoresizingFlexibleLeftMargin;
        self.titleLabel.backgroundColor = [UIColor clearColor];
        self.titleLabel.textAlignment = NSTextAlignmentCenter;
        self.titleLabel.textColor = [UIColor blackColor];
        self.titleLabel.font = [UIFont systemFontOfSize:17.0f];     //设置字体大小
        self.titleLabel.font = [UIFont boldSystemFontOfSize:17.0f]; //设置字体粗细
        self.titleLabel.center = CGPointMake(CGRectGetWidth(self.bounds) * 0.5, CGRectGetHeight(self.bounds) * 0.5);
        [self addSubview:self.titleLabel];

        
    }
    return self;
}
 //设置背景颜色
- (void)setCustNavigationBarBackGround:(UIColor *)color{
    self.contentView.backgroundColor = color;
}

- (void)layoutSubviews
{
    if (self.shadowNeeded) {
        self.contentView.layer.shadowOffset = CGSizeMake(1.0f, 1.0f);
        self.contentView.layer.shadowOpacity = 0.5f;
        self.contentView.layer.shadowRadius = 2.0f;
        self.contentView.layer.shouldRasterize = YES;
        self.contentView.layer.shadowColor = [UIColor blackColor].CGColor;
        
        UIBezierPath *path = [UIBezierPath bezierPathWithRect:self.bounds];
        self.contentView.layer.shadowPath = path.CGPath;
    }
}



@end
