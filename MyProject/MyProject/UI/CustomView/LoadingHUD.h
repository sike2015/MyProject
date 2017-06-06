//
//  LoadingHUD.h
//  MyProject
//
//  Created by sike on 2017/6/6.
//  Copyright © 2017年 sike. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LoadingHUD : UIView

/**
 *  默认转圈 + 加载中
 *
 */
+ (void)showLoadingView;

/**
 *  默认转圈 + 自定义文字
 *
 */
+ (void)showLoadingViewWithTitle:(NSString *)title;


/**
 *  隐藏loding
 *
 */
+ (void)hideLoadingView;

/**
 *  成功
 *
 */
+ (void)showSuccessLoadingViewWithTitle:(NSString *)title;

/**
 *  错误
 *
 */
+ (void)showFailLoadingViewWithError:(NSString *)errorStr;

/**
 *  警告提示框
 *
 */
+ (void)showHintInfoWithString:(NSString *)infoStr;

@end
