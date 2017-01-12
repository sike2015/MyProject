//
//  AFHttpRequest+Test.h
//  MyProject
//
//  Created by sike on 2017/1/11.
//  Copyright © 2017年 sike. All rights reserved.
//

#import "AFHttpRequest.h"

@interface AFHttpRequest (Test)

//测试程序
- (void)testProgram:(NSString *)str
             params:(NSDictionary *)params               //参数
       onCompletion:(RequestCompletionBlocks)onCompletion
            onError:(RequestFailedBlocks)onError;

@end
