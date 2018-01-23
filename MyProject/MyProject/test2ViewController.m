//
//  test2ViewController.m
//  MyProject
//
//  Created by 孝禹苏 on 2017/10/30.
//  Copyright © 2017年 sike. All rights reserved.
//

#import "test2ViewController.h"
#import "ZTMessageADMoudle.h"
#import <MJRefresh.h>
#import "test1ViewController.h"

@interface test2ViewController ()

@end

@implementation test2ViewController

#define kEncryptKey @"Sxy2018()*&<+MNCXZPKL-=" //加密key


//导航栏左侧按纽点击事件
- (void)navbarLeftClick{
}


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.titleName =@"测试2";
    
    self.view.backgroundColor = [UIColor orangeColor];
    
    
    
    UIImageView *showImageView = [[UIImageView alloc]init ];
    showImageView.backgroundColor = [UIColor greenColor];
    [self.view addSubview:showImageView];
    
    
    [showImageView mas_makeConstraints:^(MASConstraintMaker *make) {
        make.top.mas_equalTo(self.view).mas_offset(150);
        make.left.mas_equalTo(self.view).mas_offset(50);
        make.width.mas_equalTo(112);
        make.height.mas_equalTo(73);
    }];
    
    
    UILabel *addressLabel = [[UILabel alloc]init ];
    addressLabel.textColor = [UIColor blackColor];
//    addressLabel.text = @"这里是地址";
    addressLabel.numberOfLines = 2;
    [self.view addSubview:addressLabel];
    
    
    [addressLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(showImageView.mas_right).offset(10);
        make.top.mas_equalTo(showImageView.mas_top).offset(0);
        make.right.mas_equalTo(self.view.mas_right).offset(-10);
    }];
    
    UILabel *timeLabel = [[UILabel alloc]init ];
    timeLabel.textColor = [UIColor blackColor];
    timeLabel.text = @"2017-11-08";
    timeLabel.numberOfLines = 1;
    [self.view addSubview:timeLabel];
    
    
    [timeLabel mas_makeConstraints:^(MASConstraintMaker *make) {
        make.left.mas_equalTo(showImageView.mas_right).offset(10);

        
       make.top.greaterThanOrEqualTo(addressLabel.mas_bottom).offset(8);
        
        
        make.right.mas_equalTo(self.view.mas_right).offset(-10);
        make.height.mas_equalTo(20);

    }];
    
    
    NSString *testStr = @"AAAAAAAA";
    
    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
    [dict setObject:testStr forKey:@"AAA"];
    
    
    
//    NSString *dictJson = [dict mj_JSONString];
    

    NSString *encodeStr = [self encodeData:[testStr mj_JSONData] withKey:kEncryptKey];
    
    NSLog(@"加密前顺序:%@",encodeStr);
    
    
    //加密base64
    
    NSData *encodeData = [encodeStr dataUsingEncoding:NSUTF8StringEncoding];
    NSString *base64String = [encodeData base64EncodedStringWithOptions:0];

    NSLog(@"加密 base64String:%@",base64String);
    
    
    

    
    

    
    
    
    //解密
    NSData *decodedData = [[NSData alloc] initWithBase64EncodedString:base64String options:0];
    NSString *decodedString = [[NSString alloc] initWithData:decodedData encoding:NSUTF8StringEncoding];
    
    NSLog(@"解密 base64String:%@",decodedString);
    
    
    
    NSString *decodedStr = [self encodeData:[decodedString mj_JSONData] withKey:kEncryptKey];

     NSLog(@"解密后顺序:%@",decodedStr);
    

    
//

//
//    NSLog(@"解密 base64String:%@",decodedString);
    
    
//    NSString *encodeString = [self encodeString:decodedString :kEncryptKey];
//
//    NSLog(@"kEncryptKey:%@",encodeString);
    
    
    
    UIButton *testBtn = [[UIButton alloc]initWithFrame:CGRectMake(0, 0, 100, 100) ];
    testBtn.backgroundColor = [UIColor blackColor];
    testBtn.center = self.view.center;
    [testBtn addTarget:self action:@selector(testFun) forControlEvents:UIControlEventTouchUpInside];
    testBtn.enlargedEdge = 30;
    [self.view addSubview:testBtn];
    
    
}

- (void)testFun{
    DLog(@"这里是测试button扩大区域");
    test1ViewController *test1VC = [[test1ViewController alloc]init ];
    [self.navigationController pushViewController:test1VC animated:YES];
}



//加密
- (NSString *)encodeData:(NSData *)sourceData withKey:(NSString *)key {
    NSData *keyData = [key dataUsingEncoding:NSUTF8StringEncoding];
    Byte *keyBytes = (Byte *)[keyData bytes];   //取关键字的Byte数组, keyBytes一直指向头部
    
    Byte *sourceDataPoint = (Byte *)[sourceData bytes];  //取需要加密的数据的Byte数组
    
    for (long i = 0; i < [sourceData length]; i++) {
        sourceDataPoint[i] = sourceDataPoint[i] ^ keyBytes[(i % [keyData length])]; //然后按位进行异或运算
    }
    NSString *encryptStr =  [[NSString alloc] initWithData:sourceData encoding:NSUTF8StringEncoding];
    
//    //进行base64加密
//    NSData *encodeData = [encryptStr dataUsingEncoding:NSUTF8StringEncoding];
//    NSString *base64String = [encodeData base64EncodedStringWithOptions:0];
//
//    return base64String;
    return encryptStr;
    
    
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
