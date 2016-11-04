//
//  ViewController.m
//  MyProject
//
//  Created by sike on 2016/10/26.
//  Copyright © 2016年 sike. All rights reserved.
//

#import "ViewController.h"
#import "NSString+extension.h"
@interface ViewController ()<UIWebViewDelegate,UITableViewDataSource,UITableViewDelegate>{
    
}
@property (nonatomic,strong) UIWebView *currentWebView;         //webView
@property (nonatomic,strong) UITableView *currentTableView;     //tableView
@property (nonatomic,strong) NSMutableArray *dataArray;
@end

@implementation ViewController


- (void)dealloc
{
    [self.currentWebView.scrollView removeObserver:self forKeyPath:@"contentSize"];
}


- (void)viewDidLoad {
    [super viewDidLoad];
    
    self.dataArray = [NSMutableArray arrayWithObjects:@"11",@"22",@"33",@"44", nil];
    
    self.currentWebView = [[UIWebView alloc]initWithFrame:[UIScreen mainScreen].bounds ];
    self.currentWebView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
    self.currentWebView.delegate = self;
    self.currentWebView.scrollView.bounces = NO;
    
    
        NSString *url = @"http://blog.csdn.net/sike2008";
    
    //    NSString *url = @"http://www.baidu.com";
    
    //    NSString *url = @"http://blog.csdn.net/bolike/article/details/20402077";
    
//    NSString *url = @"http://www.youku.com";
    
    //网络请求Http
    NSURLRequest *requestURL = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
    [self.currentWebView loadRequest:requestURL];
    
    
    
    //监听事件
    [self.currentWebView.scrollView addObserver:self forKeyPath:@"contentSize" options:NSKeyValueObservingOptionNew context:nil];
    
    
    _currentTableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
    _currentTableView.dataSource = self;
    _currentTableView.delegate = self;
    [self.view addSubview:_currentTableView];
    
    
    //headView
    _currentTableView.tableHeaderView = self.currentWebView;
    
    
}

#pragma mark-
#pragma mark 监听事件 methods delegate



- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary *)change context:(void *)context
{
    UIScrollView *scrollView = object;
    CGSize size = scrollView.contentSize;
    
    float WebViewHeight = [UIScreen mainScreen].bounds.size.height;
    
    
    //动态改变webview的frame高度，获取变化中contentSize 高度
    CGFloat maxHeight = (size.height >= WebViewHeight) ? size.height :WebViewHeight ;
    
//    NSLog(@"maxHeight:%.1f",maxHeight);
    
    self.currentWebView.height = maxHeight;
    self.currentTableView.tableHeaderView = self.currentWebView;
    
    
}


- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    if (indexPath.section ==0) {
        return 40;
    }else{
        return 40;
    }
}

- (NSInteger)numberOfSectionsInTableView:(UITableView *)tableView{
    return 2;
}
- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return  section==1? 10:1;
    
}


- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView cellForRowAtIndexPath:indexPath];
    
    if (indexPath.section == 0) {
        if (!cell) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"xxxxx" ];
            cell.textLabel.text = @"测试";
            
            
        }
        return cell;
    }else{
        static NSString *cellIdentity = @"cellIdentity";
        
        if (!cell) {
            cell = [[UITableViewCell alloc]initWithStyle:UITableViewCellStyleDefault reuseIdentifier:cellIdentity ];
        }
        cell.textLabel.text = @"123";
        return cell;
    }
    
    
    
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    [tableView deselectRowAtIndexPath:indexPath animated:YES];
    
    [Utils alertWithTitle:@"" message:[self.dataArray objectAtIndex:0]];
    
    
}


- (void)webViewDidStartLoad:(UIWebView *)webView{
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    
}


@end
