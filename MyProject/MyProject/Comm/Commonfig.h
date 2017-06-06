//
//  Commonfig.h
//  Project
//
//  Created by sike on 13-7-30.
//  Copyright (c) 2013年 sike. All rights reserved.
//

#import <CoreLocation/CoreLocation.h>

#ifndef Project_Commonfig_h
#define Project_Commonfig_h


//delegate 代理
#define TheAppDelegate  ((AppDelegate *)[[UIApplication sharedApplication] delegate])


//获取图片路径
#define GET_IMAGE_RESOURCE(NSSTR_RESOURCE_NAME,NSSTR_RESOURCE_TYPE) ([UIImage imageWithContentsOfFile:[[NSBundle mainBundle] pathForResource:NSSTR_RESOURCE_NAME ofType:NSSTR_RESOURCE_TYPE]])


//判断当前系统版本 是否小于指定版本
#define SYSTEM_VERSION_LESS_THAN(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] == NSOrderedAscending)


//判断当前系统版本 是否大于指定版本
#define SYSTEM_VERSION_MORE_THAN(v)  ([[[UIDevice currentDevice] systemVersion] compare:v options:NSNumericSearch] > NSOrderedAscending)


//当前版本
#define kCurrentVersion [[UIDevice currentDevice].systemVersion doubleValue]

//颜色
#define RGB(r,g,b) [UIColor colorWithRed:r/255.f green:g/255.f blue:b/255.f alpha:1.f]

// Degrees to radians 角度转弧度
#define DEGREES_TO_RADIANS(angle) ((angle) / 180.0 * M_PI)




//定义set get方法
#define PropertyString(s) @property (nonatomic,strong) NSString * s






//限制字符长度
#define kRemarkText  100    //备注字符串长度

#define kMaxPasswordLength 16   //最大密码长度
#define kMaxNicknameLength 10   //最大昵称长度

#define kMaxAddrLength 100   //最大地址长度
#define kMaxNameLength 30    //收货人姓名长度
#define kMaxPhoneLength 11   //电话号码长度



//创建单例  
#define DEFINE_SINGLETON_FOR_HEADER(className) \
\
+ (className *)shared##className;

#define DEFINE_SINGLETON_FOR_CLASS(className) \
\
+ (className *)shared##className { \
static className *shared##className = nil; \
static dispatch_once_t onceToken; \
dispatch_once(&onceToken, ^{ \
shared##className = [[self alloc] init]; \
}); \
return shared##className; \
}

#endif
