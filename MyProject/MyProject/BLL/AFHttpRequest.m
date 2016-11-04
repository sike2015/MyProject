//
//  AFHttpRequest.m
//  MyProject
//
//  Created by sike on 2016/10/26.
//  Copyright © 2016年 sike. All rights reserved.
//

#import "AFHttpRequest.h"

@implementation AFHttpRequest

//get请求
- (void)requestGet:(NSString *)url                      //请求url
            params:(NSDictionary *)params               //参数
      onCompletion:(RequestCompletionBlocks)onCompletion
           onError:(RequestFailedBlocks)onError
        onProgress:(RequestProgress)onProgress{
    [self startRequestMethod:url
                      params:params
               requestMethod:kGET
                onCompletion:^(id result) {
                    onCompletion(result);
                } onError:^(NSError *error) {
                    onError(error);
                }];
}



//post请求
- (void)requestPost:(NSString *)url                      //请求url
             params:(NSDictionary *)params               //参数
       onCompletion:(RequestCompletionBlocks)onCompletion
            onError:(RequestFailedBlocks)onError
         onProgress:(RequestProgress)onProgress{
    
    [self startRequestMethod:url
                      params:params
               requestMethod:kPOST
                onCompletion:^(id result) {
                    onCompletion(result);
                } onError:^(NSError *error) {
                    onError(error);
                }];
    
}

@end
