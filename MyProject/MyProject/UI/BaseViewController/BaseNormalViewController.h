//
//  BaseNormalViewController.h
//  MyProject
//
//  Created by sike on 2016/10/26.
//  Copyright © 2016年 sike. All rights reserved.
//

#import "BaseViewController.h"
#import "CustNavigationBar.h"

@interface BaseNormalViewController : BaseViewController
@property (nonatomic,assign) NSString      *titleName;          //标题
@property (nonatomic,strong) NSString      *setTitle;           //从服务器得到的标题
@property (nonatomic,strong) CustNavigationBar *navigationBar;  //自定义NavigationBar
@property (nonatomic,strong) UIButton *leftButton;              //左侧的button
@property (nonatomic,strong) CustomVerticalLabel *leftTitle;    //左侧标题
@property (nonatomic,strong) UIButton *rightButton;             //右侧的button
@property (nonatomic,strong) CustomVerticalLabel *rightTitle;   //右侧标题
@property (nonatomic,strong)UIImageView *lineView;   //下划线
@end
