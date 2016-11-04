//
//  AFRequest.h
//  MyProject
//
//  Created by sike on 2016/10/26.
//  Copyright © 2016年 sike. All rights reserved.
//

#import <Foundation/Foundation.h>

typedef void (^RequestCompletionBlocks)(id result);
typedef void (^RequestFailedBlocks)(NSError *error);
typedef void (^RequestProgress)(double progress);
@interface AFRequest : NSObject


//取消当前请求
- (void)cancelRequest;

//异步请求方式
- (void)startRequestMethod:(NSString *)url                      //请求url
                    params:(NSDictionary *)params               //参数
             requestMethod:(NSString *)method                   //请求方法
              onCompletion:(RequestCompletionBlocks)onCompletion
                   onError:(RequestFailedBlocks)onError;



@end
