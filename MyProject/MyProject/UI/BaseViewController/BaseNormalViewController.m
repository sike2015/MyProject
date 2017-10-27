//
//  BaseNormalViewController.m
//  MyProject
//
//  Created by sike on 2016/10/26.
//  Copyright © 2016年 sike. All rights reserved.
//

#import "BaseNormalViewController.h"

//基类里面 使用宏定义
#define kControlOriginX 10
#define kControlOriginY 9

#define kControlWidth 50
#define kControlHeight 28

@interface BaseNormalViewController ()<UITableViewDataSource,UITableViewDelegate>

@end

@implementation BaseNormalViewController

#pragma mark-
#pragma mark CreateTableView Method
//创建PlainTableView
- (UITableView *)createPlainTableView{
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStylePlain];
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.backgroundView = nil;
    tableView.backgroundColor = self.view.backgroundColor;
    tableView.separatorStyle = UITableViewCellSeparatorStyleSingleLine;
    tableView.backgroundColor = [UIColor clearColor];
    [self setExtraCellLineHidden:tableView];  //根据数据显示行数
    
    
    //让图片和文字 都在横线上
    if ([tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    return tableView;
}

//section Head foot 跟随走
- (UITableView*)createGroupedTableView{
    UITableView *tableView = [[UITableView alloc] initWithFrame:self.view.bounds style:UITableViewStyleGrouped];
    tableView.autoresizingMask = UIViewAutoresizingFlexibleHeight | UIViewAutoresizingFlexibleWidth;
    tableView.delegate = self;
    tableView.dataSource = self;
    tableView.separatorColor = [UIColor lightGrayColor];
    tableView.backgroundColor = self.view.backgroundColor;
    tableView.backgroundView = nil;
    tableView.backgroundColor = [UIColor clearColor];
    [self setExtraCellLineHidden:tableView];  //根据数据显示行数
    
    //让图片和文字 都在横线上
    if ([tableView respondsToSelector:@selector(setSeparatorInset:)]) {
        [tableView setSeparatorInset:UIEdgeInsetsZero];
    }
    return tableView;
    
    
    
    
}

#pragma mark-
#pragma mark TableViewDelegate Method

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return 0;
}

- (CGFloat)tableView:(UITableView*)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath
{
    return 44;
}


- (UITableViewCell*)tableView:(UITableView*)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    static NSString *cellIdentifier = @"cellIdentifier";
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:cellIdentifier];
    if ( cell == nil )
    {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentifier];
    }
    
    return cell;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
}

//根据tableiview内容显示横线
-(void)setExtraCellLineHidden: (UITableView *)tableView
{
    UIView *footView = [[UIView alloc]init ];
    footView.backgroundColor = [UIColor clearColor];
    tableView.tableFooterView = footView;
    
}

#pragma mark-
- (void)viewDidLoad
{
    [super viewDidLoad];
    
    //载入BaseView
    [self loadBaseView];
    
    //左侧
    [self navbarLeftClick];
    
    //右侧
    [self navbarRightClick];
    
    
}

#pragma mark - 初始化相关
//________________________________________________________________________
//载入BaseView
- (void)loadBaseView{
    
    //如果存在 先将其移除
    if (self.navigationBar ) {
        [self.navigationBar removeFromSuperview];
        self.navigationBar = nil;
    }
    
    //自定义navigationBar 颜色
    self.navigationBar = [[CustNavigationBar alloc]initWithFrame:CGRectMake(CGRectZero.origin.x, CGRectZero.origin.y, self.view.bounds.size.width, kNavigationBarHeight) ];
    self.navigationBar.backgroundColor = [UIColor whiteColor];
    self.navigationBar.shadowNeeded = NO;  //关闭阴影
    self.navigationBar.userInteractionEnabled = YES; //开启点击事件
    [self.view addSubview:self.navigationBar];
    
//    //下划线
//    self.lineView = [[UIImageView alloc]initWithFrame:CGRectMake(self.navigationBar.frame.origin.x, self.navigationBar.bottom-1, self.navigationBar.frame.size.width, 0.5) ];
//    self.lineView.backgroundColor = [UIColor colorWithHexString:@"#bababa"];
//    [self.navigationBar addSubview:self.lineView];
//    
    
    
}






//导航栏左侧按纽点击事件
- (void)navbarLeftClick
{
    //如果存在 实现将其移除
    if (self.leftButton) {
        [self.leftButton removeFromSuperview];
        self.leftButton = nil;
    }
    
    //返回按钮
    self.leftButton = [UIButton createButton:CGRectMake(kControlOriginX, kControlOriginY, 22, 22) normalImage:@"back_new"  action:@selector(goBack) addTarget:self];
    self.leftButton.center = CGPointMake(self.leftButton.center.x, self.navigationBar.center.y);
    [self.navigationBar addSubview:self.leftButton];
    

}

//导航栏右侧按纽点击事件
- (void)navbarRightClick{
    //如果存在 实现将其移除
    if (self.rightButton) {
        [self.rightButton removeFromSuperview];
        self.rightButton = nil;
    }
    
    //右侧按钮
    self.rightButton = [UIButton createButton:CGRectMake(self.view.bounds.size.width-40 - 0.0f, kControlOriginY, 55/2, 55/2) normalImage:@"base_Add.png"  action: nil addTarget:self];
    self.rightButton.center = CGPointMake(self.rightButton.center.x, self.navigationBar.center.y);
    [self.navigationBar addSubview:self.rightButton];
    
   
}


@end
