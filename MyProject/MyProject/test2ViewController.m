//
//  test2ViewController.m
//  MyProject
//
//  Created by 孝禹苏 on 2017/10/30.
//  Copyright © 2017年 sike. All rights reserved.
//

#import "test2ViewController.h"
#import "ZTMessageADMoudle.h"

@interface test2ViewController ()

@end

@implementation test2ViewController

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
    
    
    NSString *getPath = [[NSBundle mainBundle]pathForResource:@"ADPlist" ofType:@"plist"];
    
    NSDictionary *getData = [NSDictionary dictionaryWithContentsOfFile:getPath];
    
    DTLog(@"getData:%@",getData);

    
    
    
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
