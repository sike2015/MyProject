//
//  WebViewController.m
//  XHLaunchAdExample
//
//  Created by zhuxiaohui on 16/9/8.
//  Copyright © 2016年 it7090.com. All rights reserved.
//  代码地址:https://github.com/CoderZhuXH/XHLaunchAd
//  广告详情页

#import "WebViewController.h"
#import <WebKit/WebKit.h>
#import "XHLaunchAd.h"

@interface WebViewController ()
@property(nonatomic,strong)WKWebView *webView;
@property (nonatomic, strong) UIProgressView *progressView;
@end

@implementation WebViewController

-(void)dealloc
{
    /**
     如果你设置了APP从后台恢复时也显示广告,
     当用户停留在广告详情页时,APP从后台恢复时,你不想再次显示启动广告,
     请在广告详情控制器销毁时,发下面通知,告诉XHLaunchAd,广告详情页面已显示完
     */
    [[NSNotificationCenter defaultCenter] postNotificationName:XHLaunchAdDetailPageShowFinishNotification object:nil];
    
    [self.webView removeObserver:self forKeyPath:@"estimatedProgress"];
}
-(void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
    
    /**
     如果你设置了APP从后台恢复时也显示广告,
     当用户停留在广告详情页时,APP从后台恢复时,你不想再次显示启动广告,
     请在广告详情控制器将要显示时,发下面通知,告诉XHLaunchAd,广告详情页面将要显示
     */
    [[NSNotificationCenter defaultCenter] postNotificationName:XHLaunchAdDetailPageWillShowNotification object:nil];
}
- (void)viewDidLoad {
    [super viewDidLoad];
    self.titleName = @"详情";
    self.automaticallyAdjustsScrollViewInsets = NO;

    self.webView = [[WKWebView alloc] initWithFrame:CGRectMake(0, kNavigationBarHeight, kBaseWidth, kBaseHeight - kNavigationBarHeight)];
    self.webView.scrollView.backgroundColor = [UIColor groupTableViewBackgroundColor];
    [self.view addSubview:self.webView];
    
    [self.webView addObserver:self forKeyPath:@"estimatedProgress" options:NSKeyValueObservingOptionNew context:nil];
    
    if(!self.URLString) return;
    NSURLRequest *request = [NSURLRequest requestWithURL:[NSURL URLWithString:(self.URLString)]];
    [self.webView loadRequest:request];
    
    self.progressView = [[UIProgressView alloc] initWithFrame:CGRectMake(0, kNavigationBarHeight, self.view.bounds.size.width, 2)];
    self.progressView.progressViewStyle = UIProgressViewStyleBar;
    self.progressView.progressTintColor = [UIColor blackColor];
    [self.navigationController.view addSubview:self.progressView];
}
-(void)viewWillDisappear:(BOOL)animated
{
    [super viewWillDisappear:animated];
    [self.progressView removeFromSuperview];
}
-(void)back{
    
    if([_webView canGoBack])
    {
        [_webView goBack];
    }
    else
    {
        [self.navigationController popViewControllerAnimated:YES];
    }
}
- (void)observeValueForKeyPath:(NSString *)keyPath ofObject:(id)object change:(NSDictionary<NSString *,id> *)change context:(void *)context{
    if ([keyPath isEqualToString:@"estimatedProgress"]) {
        
        CGFloat progress = [change[NSKeyValueChangeNewKey] floatValue];
        [self.progressView setProgress:progress animated:YES];
        if(progress == 1.0)
        {
            dispatch_after(dispatch_time(DISPATCH_TIME_NOW, (int64_t)(0.5 * NSEC_PER_SEC)), dispatch_get_main_queue(), ^{
                
                [self.progressView setProgress:0.0 animated:NO];
            });
        }
        
    }else{
        [super observeValueForKeyPath:keyPath ofObject:object change:change context:context];
    }
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
