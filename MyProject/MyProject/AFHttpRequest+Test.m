//
//  AFHttpRequest+Test.m
//  MyProject
//
//  Created by sike on 2017/1/11.
//  Copyright © 2017年 sike. All rights reserved.
//

#import "AFHttpRequest+Test.h"

@implementation AFHttpRequest (Test)

//测试程序
- (void)testProgram:(NSString *)str
             params:(NSDictionary *)params               //参数
       onCompletion:(RequestCompletionBlocks)onCompletion
            onError:(RequestFailedBlocks)onError{
    
    NSString *requestUrl = [NSString stringWithFormat:@"http://p.3.cn/prices/mgets?skuIds=J_11188331325&type=1"];
    
//    NSMutableDictionary *dict = [NSMutableDictionary dictionary];
//    [dict setValue:@"18600186982" forKey:@"tel"];
    
    [self requestGet:requestUrl
              params:nil
        onCompletion:^(id result) {
            onCompletion(result);
        } onError:^(NSError *error) {
            onError(error);
        } onProgress:^(double progress) {
            
        }];
    
}

@end
