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




//安全检查使用对象  add by zuoweijie
#define IsNOTNullOrEmptyOfArray(_ARRAY___) (_ARRAY___ && [_ARRAY___ isKindOfClass:[NSArray class]] && [_ARRAY___ count])
#define IsNOTNullOrEmptyOfDictionary(_DICTIONARY___) (_DICTIONARY___ && [_DICTIONARY___ isKindOfClass:[NSDictionary class]] && [_DICTIONARY___ count])
#define IsNOTNullOrEmptyOfNSString(_STRING___) (_STRING___ && [_STRING___ isKindOfClass:[NSString class]] && [_STRING___ length])
#define IsNOTNullOrEmptyOfNSNumber(_NUMBER___) (_NUMBER___ && [_NUMBER___ isKindOfClass:[NSNumber class]] )
#define IsNullObj(____object____) ((____object____ && [____object____ isKindOfClass: [NSNull class]]) || (____object____ == nil))
#define SafeToInitSomeString(_STRING__)  (( IsNOTNullOrEmptyOfNSString(_STRING__))?(_STRING__):@"")
#define SafeToInitSomeNSNumber(_NSNUMBER__)  (( IsNOTNullOrEmptyOfNSNumber(_NSNUMBER__))?(_NSNUMBER__):0)

//判断是否空字符串
#define isNullString(s)         (!s || [s isEqual:[NSNull null]] || [s isEqualToString:@""])
#define kNilOrNull(__ref) (((__ref) == nil) || ([(__ref) isEqual:[NSNull null]]))

#define delegateWindow               [[UIApplication sharedApplication].delegate window]

//一般的提示信息
#define mAlertView(title, msg) \
UIAlertView *alert = [[UIAlertView alloc] initWithTitle:title message:msg delegate:nil \
cancelButtonTitle:@"OK" \
otherButtonTitles:nil]; \
[alert show];




//定义set get方法
#define PropertyString(s) @property (nonatomic,strong) NSString * s


#if DEBUG
#define DTLog(xx, ...)                  NSLog(@"%s(%d): " xx, __PRETTY_FUNCTION__, __LINE__, ##__VA_ARGS__)
#else
#define DTLog(xx, ...)                  nil
#endif







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
