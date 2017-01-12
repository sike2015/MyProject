//
//  AFRequest.m
//  MyProject
//
//  Created by sike on 2016/10/26.
//  Copyright © 2016年 sike. All rights reserved.
//

#import "AFRequest.h"
#import "AFNetworking.h"
#import "AppDelegate+GoViewController.h"

@interface AFRequest(){
    
}
@property (nonatomic,strong) NSMutableArray *arrayOfTasks;
@end

@implementation AFRequest


//取消当前请求
- (void)cancelRequest{
    [self.arrayOfTasks enumerateObjectsUsingBlock:^(NSURLSessionDataTask *taskObj, NSUInteger idx, BOOL *stop) {
        [taskObj cancel]; /// when sending cancel to the task failure: block is going to be called
    }];
}

- (id)init{
    if (self = [super init]) {
        self.arrayOfTasks = [NSMutableArray array];
    }
    return self;
}

//异步请求方式
- (void)startRequestMethod:(NSString *)url                      //请求url
                    params:(NSDictionary *)params               //参数
             requestMethod:(NSString *)method                   //请求方法
              onCompletion:(RequestCompletionBlocks)onCompletion
                   onError:(RequestFailedBlocks)onError{
    
    
    AFHTTPSessionManager *manager = [AFHTTPSessionManager manager];
    manager.responseSerializer = [AFHTTPResponseSerializer serializer];
    
    //增加头部header

    if ([method isEqualToString:kGET]) {
        [manager GET:url
          parameters:params
            progress:^(NSProgress * _Nonnull downloadProgress) {
                
            } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
  
                NSError *error = nil;
                id jsonObject = [NSJSONSerialization JSONObjectWithData:responseObject options:NSJSONReadingMutableLeaves error:&error];

                if ([jsonObject isKindOfClass:[NSDictionary class]]){
                    
                    NSDictionary *deserializedDictionary = (NSDictionary *)jsonObject;
                    
                    NSInteger stateCode = [deserializedDictionary[@"stateCode"]integerValue ];
                    
                    if (stateCode ==100) {
                        onCompletion(deserializedDictionary);
                    }
                    else{
                        NSLog(@"解析错误!");
                        [TheAppDelegate goLoginVC];
                    }
                    
                    
                    

                } else if ([jsonObject isKindOfClass:[NSArray class]]){
                    NSArray *deserializedArray = (NSArray *)jsonObject;
                    onCompletion(deserializedArray);
                    
                    
                    
                } else {
                    NSLog(@"An error happened while deserializing the JSON data.");
                    
                }
                

                
                
            } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
                onError(error);
            }];
    }else if ([method isEqualToString:kPOST]) {
        [manager POST:url
           parameters:params
             progress:^(NSProgress * _Nonnull uploadProgress) {
            
        } success:^(NSURLSessionDataTask * _Nonnull task, id  _Nullable responseObject) {
            
        } failure:^(NSURLSessionDataTask * _Nullable task, NSError * _Nonnull error) {
            
        }];
    }
    
    

    
    
    //把网络请求增加到该数组
    [self.arrayOfTasks addObject:manager];
    
    
  
    
}
@end
