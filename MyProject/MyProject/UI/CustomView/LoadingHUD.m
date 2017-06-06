//
//  LoadingHUD.m
//  MyProject
//
//  Created by sike on 2017/6/6.
//  Copyright © 2017年 sike. All rights reserved.
//

#import "LoadingHUD.h"
#import <SVProgressHUD.h>

@implementation LoadingHUD

/**
 *  默认转圈 + 加载中
 *
 */
+ (void)showLoadingView{
    [SVProgressHUD showWithStatus:@"加载中"];
}

/**
 *  默认转圈 + 自定义文字
 *
 */
+ (void)showLoadingViewWithTitle:(NSString *)title{
    [SVProgressHUD showWithStatus:title];
}


/**
 *  隐藏loding
 *
 */
+ (void)hideLoadingView{
    [SVProgressHUD dismiss];
}

/**
 *  成功
 *
 */
+ (void)showSuccessLoadingViewWithTitle:(NSString *)title{
    [SVProgressHUD showSuccessWithStatus:title];
}

/**
 *  错误
 *
 */
+ (void)showFailLoadingViewWithError:(NSString *)errorStr{
    [SVProgressHUD showErrorWithStatus:errorStr];
}

/**
 *  警告提示框
 *
 */
+ (void)showHintInfoWithString:(NSString *)infoStr{
    [SVProgressHUD showInfoWithStatus:infoStr];
}

@end
