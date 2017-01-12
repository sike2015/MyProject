//
//  AppDelegate+GoViewController.m
//  MyProject
//
//  Created by sike on 2017/1/12.
//  Copyright © 2017年 sike. All rights reserved.
//

#import "AppDelegate+GoViewController.h"
#import "LoginViewController.h"
#import <objc/runtime.h>

@implementation AppDelegate (GoViewController)

/**
 *  进入登录页
 */
-(void)goLoginVC{
    
    LoginViewController *loginVC = [[LoginViewController alloc]init ];
    [self.window.rootViewController presentViewController:loginVC
                                                 animated:YES completion:^{
        
                                                 }];
    
}








/**
 *  跳转界面
 */
- (void)push:(NSDictionary *)params{
    //类名
    NSString *class = [NSString stringWithFormat:@"%@",params[@"class"]];
    const char *className = [class cStringUsingEncoding:NSASCIIStringEncoding];
    
    //根据字符串返回一个类
    Class newClass = objc_getClass(className);
    
    if (!newClass) {
        Class superClass = [NSObject class];
        newClass = objc_allocateClassPair(superClass, className, 0);
        
        //注册你创建的这个类
        objc_registerClassPair(newClass);
        
    }
    
    //创建对象
    id instance = [[newClass alloc]init ];
    
    
    //增加class 里面的属性
    NSDictionary *propertys = params[@"property"];
    
    [propertys enumerateKeysAndObjectsUsingBlock:^(id  _Nonnull key, id  _Nonnull obj, BOOL * _Nonnull stop) {
        
        //检测这个对象是否 存在这个属性
        if ([self checkIsExistPropertyWithInstance:instance verifyPropertyName:key]) {
            //利用KVC赋值
            if (![obj isKindOfClass:[NSNull class]] && obj!=nil) {  //赋值不能为空
                [instance setValue:obj forKey:key];
            }
            
            
        }
        
    }];
    
    
    
    UIViewController *rootVC = self.window.rootViewController;
    
    [rootVC presentViewController:instance animated:YES completion:^{
        
    }];
    
    
    
    
}

//检测对象是否有该属性
- (BOOL)checkIsExistPropertyWithInstance:(id)instance verifyPropertyName:(NSString *)verifyPropertyName{
    unsigned int outCount ,i;
    
    //获得对象里的属性列表
    objc_property_t *properties = class_copyPropertyList([instance class], &outCount); //使用了objc_property_t 一定要释放
    
    for (i=0; i<outCount; i++) {
        objc_property_t propery = properties[i];
        //属性名转字符串
        NSString *properyName = [[NSString alloc]initWithCString:property_getName(propery) encoding:NSUTF8StringEncoding ];
        
        //判断该属性是否存在
        if ([properyName isEqualToString:verifyPropertyName]) {
            return YES;
        }
    }
    
    free(properties);
    
    return NO;
    
    
}

@end
