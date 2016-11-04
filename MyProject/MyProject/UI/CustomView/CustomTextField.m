//
//  CustomTextField.m
//  HaiPi
//
//  Created by sike on 14-8-3.
//  Copyright (c) 2014年 suxiaoyu. All rights reserved.
//

#import "CustomTextField.h"

@implementation CustomTextField

- (void) dealloc {
    
}

- (id) initWithFrame:(CGRect)frame {
    
    if (self = [super initWithFrame: frame]) {
        
        [self setBorderStyle: UITextBorderStyleRoundedRect];
        
        UIView *leftView = [[UIView alloc] initWithFrame: CGRectMake(0.0f, 0.0f, 20.0f, 35.0f)];
        [leftView setBackgroundColor: [UIColor brownColor]];
        [self setLeftView: leftView];
        [self setLeftViewMode: UITextFieldViewModeAlways];
        
        [self setClearButtonMode: UITextFieldViewModeWhileEditing];
        [self setContentVerticalAlignment: UIControlContentVerticalAlignmentCenter];
    }
    
    return self;
}

@end
