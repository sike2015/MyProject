//
//  test1ViewController.m
//  MyProject
//
//  Created by 孝禹苏 on 2017/10/27.
//  Copyright © 2017年 sike. All rights reserved.
//

#import "test1ViewController.h"
#import "test2ViewController.h"

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


@end
