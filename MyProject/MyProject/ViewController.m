//
//  ViewController.m
//  MyProject
//
//  Created by sike on 2016/10/26.
//  Copyright © 2016年 sike. All rights reserved.
//

#import "ViewController.h"
#import "NSString+extension.h"
#import "AFHttpRequest+Test.h"
#import <Masonry.h>

@interface ViewController ()<UIWebViewDelegate,UITableViewDataSource,UITableViewDelegate>{
    UILabel *_testLabel;
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
    
//    //监听事件
//    [self.currentWebView.scrollView addObserver:self forKeyPath:@"contentSize" options:NSKeyValueObservingOptionNew context:nil];
//    
//    self.dataArray = [NSMutableArray arrayWithObjects:@"11",@"22",@"33",@"44", nil];
//    
//    self.currentWebView = [[UIWebView alloc]initWithFrame:[UIScreen mainScreen].bounds ];
//    self.currentWebView.autoresizingMask = UIViewAutoresizingFlexibleWidth | UIViewAutoresizingFlexibleHeight;
//    self.currentWebView.delegate = self;
//    self.currentWebView.scrollView.bounces = NO;
//    
//    
//    NSString *url = @"http://blog.csdn.net/sike2008";
//
//    
//    //网络请求Http
//    NSURLRequest *requestURL = [NSURLRequest requestWithURL:[NSURL URLWithString:url]];
//    [self.currentWebView loadRequest:requestURL];
//    
//    
//    
//
//    
//    
//    _currentTableView = [[UITableView alloc] initWithFrame:[UIScreen mainScreen].bounds style:UITableViewStylePlain];
//    _currentTableView.dataSource = self;
//    _currentTableView.delegate = self;
//    [self.view addSubview:_currentTableView];
//    
//    
//    //headView
//    _currentTableView.tableHeaderView = self.currentWebView;
//    
//    
//    AFHttpRequest *request = [[AFHttpRequest alloc]init ];
//    [request testProgram:@""
//                  params:nil
//            onCompletion:^(id result) {
//                NSLog(@"得到解析结果result:%@",result);
//                
//                
//                
//                
//    } onError:^(NSError *error) {
//        NSLog(@"发生错误!");
//    }];
//  
    
    
    
//    [self.view  userConfigView:@"表情_傻了" showName:@"请点击" ReloadButtonBlock:^(id sender) {
//    
//    }];
    
    
    
    UILabel *label = [[UILabel alloc]init ];
    label.backgroundColor = [UIColor greenColor];
    label.text = @"房贷首付你的伤口酒囊饭袋就开始南非进口但是男方看见你的伤口烦恼的开始南方skkdsnfdksjnfjkdsnfjkdsnfjkdsnfjkdnsjkfndjksnfjkdsnfkjdnsfnjkdsnfjkdsqqqq的网上热是非得失";
    label.numberOfLines = 1;
    label.font = [UIFont systemFontOfSize:12.0f];
    [label setLineBreakMode:NSLineBreakByTruncatingTail];
    [self.view addSubview:label];
    
    
//    _testLabel = [self testLabel];
//    [self.view addSubview:_testLabel];
    
    
    [label mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(10);
        make.top.mas_equalTo(50);
        make.right.mas_equalTo(self.view.mas_right).offset(-25);
        make.height.mas_equalTo(100);
    }];
    
    
    
    
    label.attributedText = [self getAttributedStringWithString:label.text lineSpace:5 isFirst:YES];
    
    
    
    
    
    
}


- (UILabel *)testLabel {
    if (!_testLabel) {
        _testLabel = [[UILabel alloc] init];
        _testLabel.numberOfLines = 3;
        NSMutableParagraphStyle *style = [[NSMutableParagraphStyle alloc] init];
        style.firstLineHeadIndent = 20;
        style.tailIndent = -20;
        style.lineBreakMode = NSLineBreakByTruncatingTail;
        NSAttributedString *attributedText =
        [[NSAttributedString alloc] initWithString: @"这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本这是缩进文本。"
//                                        attributes: @{NSParagraphStyleAttributeName: style,
//                                                      
//                                                      NSFontAttributeName: NSParagraphStyleAttributeName}];
         
                                        attributes: @{NSParagraphStyleAttributeName: style,
                                                      NSForegroundColorAttributeName:  [UIColor orangeColor] ,
                                                      NSFontAttributeName: NSParagraphStyleAttributeName}];

        _testLabel.attributedText = attributedText;
    }
    return _testLabel;
}


-(NSAttributedString *)getAttributedStringWithString:(NSString *)string lineSpace:(CGFloat)lineSpace isFirst:(BOOL)isFirst{
    NSMutableAttributedString *attributedString = [[NSMutableAttributedString alloc] initWithString:string];
    
    
    
    NSMutableParagraphStyle *paragraphStyle = [[NSMutableParagraphStyle alloc] init];
    paragraphStyle.lineSpacing = lineSpace;     // 调整行间距
    paragraphStyle.alignment = NSTextAlignmentJustified;
    paragraphStyle.lineBreakMode = NSLineBreakByTruncatingTail;
    
    
    //是否需要首行缩进
    if (isFirst) {
        [paragraphStyle setFirstLineHeadIndent:30];   //首行缩进
//        paragraphStyle.tailIndent = -30;
    }
    
    NSRange range = NSMakeRange(0, [string length]);
    [attributedString addAttribute:NSParagraphStyleAttributeName value:paragraphStyle range:range];
    return attributedString;
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
    
    [Utils alertWithTitle:@"" message:[self.dataArray objectAtIndex:indexPath.row]];
    
    
    
    
    
    
    
}


- (void)webViewDidStartLoad:(UIWebView *)webView{
    
}

- (void)webViewDidFinishLoad:(UIWebView *)webView{
    
    
}


@end
