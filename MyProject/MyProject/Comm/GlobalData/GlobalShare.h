//
//  GlobalShare.h
//  MyProject
//
//  Created by sike on 2016/10/26.
//  Copyright © 2016年 sike. All rights reserved.
//

#import <Foundation/Foundation.h>
#define TheNetworkStatus [GlobalShare sharedInstance]  //单例宏定义
@interface GlobalShare : NSObject

//实例化单例
+ (instancetype)sharedInstance;

@end
  
