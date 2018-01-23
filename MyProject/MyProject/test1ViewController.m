//
//  test1ViewController.m
//  MyProject
//
//  Created by 孝禹苏 on 2017/10/27.
//  Copyright © 2017年 sike. All rights reserved.
//

#import "test1ViewController.h"
#import "test2ViewController.h"
#import "UITableView+XY.h"
#import <objc/runtime.h>
#import "MJRefresh.h"

@interface test1ViewController ()
@property (nonatomic,strong) UITableView *tableView;
@property (nonatomic,strong) NSMutableArray *dataArray;
@end

@implementation test1ViewController



- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    self.titleName = @"基础类1";
    
    self.dataArray = [NSMutableArray array];
    
    for (unsigned i=0; i<30; i++) {
        [self.dataArray addObject:@"1"];
    }
    
    self.tableView = [self createPlainTableView];

    [self.view addSubview:self.tableView];

    DLog(@"tableView frame:%@",NSStringFromCGRect(self.tableView.frame));
    
    __weak typeof(self) weakSelf = self;
    self.tableView.mj_header  = [MJRefreshNormalHeader headerWithRefreshingBlock:^{
        [weakSelf loadData];
    }];
    

    [self.tableView reloadData];
    
    [self.view layoutIfNeeded];
    
    mAlertView(@"", @"测试")
    

    
}



- (void)loadData {
    dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.7 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
        [self.tableView.mj_header endRefreshing];
        [self.tableView reloadData];
    });
    
   
}

- (NSInteger)tableView:(UITableView*)tableView numberOfRowsInSection:(NSInteger)section
{
    return self.dataArray.count;
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
    cell.textLabel.text = [self.dataArray safeObjectAtIndex:indexPath.row];
    return cell;
}


- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    test2ViewController *test2VC = [[test2ViewController alloc]init ];
    [self.navigationController pushViewController:test2VC animated:YES];
}

#pragma mark - TableView 占位图

- (UIImage *)xy_noDataViewImage {
    return [UIImage imageNamed:@"note_list_no_data"];
}


- (NSString *)xy_noDataViewMessage {
    return @"没有数据";
}

- (UIColor *)xy_noDataViewMessageColor {
    return [UIColor redColor];
}

@end
