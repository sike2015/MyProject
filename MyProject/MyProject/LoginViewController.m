//
//  LoginViewController.m
//  MyProject
//
//  Created by sike on 2017/1/12.
//  Copyright © 2017年 sike. All rights reserved.
//

#import "LoginViewController.h"
#import "LoadingHUD.h"
@interface LoginViewController ()

@end

@implementation LoginViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    //设置背景色
    self.view.backgroundColor = [UIColor yellowColor];
    
    
    UILabel *label = [[UILabel alloc]initWithFrame:CGRectMake(0, 0, 100, 30) ];
    label.text = self.testStr;
    label.center = self.view.center;
    [self.view addSubview:label];
    
    [LoadingHUD showLoadingView];
    
    
    
}




@end
