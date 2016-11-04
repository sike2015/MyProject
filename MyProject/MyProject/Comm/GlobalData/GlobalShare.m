//
//  GlobalShare.m
//  MyProject
//
//  Created by sike on 2016/10/26.
//  Copyright © 2016年 sike. All rights reserved.
//

#import "GlobalShare.h"

@implementation GlobalShare


+ (instancetype)sharedInstance {
    static GlobalShare *instance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        instance = [[GlobalShare alloc] init];
    });
    return instance;
}


@end
