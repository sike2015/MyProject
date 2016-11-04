//
//  BaseViewController.h
//  MyProject
//
//  Created by sike on 2016/10/26.
//  Copyright © 2016年 sike. All rights reserved.
//

#import <UIKit/UIKit.h>
#import "GlobalShare.h"

@interface BaseViewController : UIViewController
@property (nonatomic,strong) GlobalShare   *getShare;           //得到共享内容
@end
