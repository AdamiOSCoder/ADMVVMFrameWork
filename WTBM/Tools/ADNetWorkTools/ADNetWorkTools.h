//
//  ADNetWorkTools.h
//  WantToBorrowMoney
//
//  Created by Adam的Apple on 2017/12/25.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import <AFNetworking/AFNetworking.h>
#import "AFHTTPSessionManager.h"

@interface ADNetWorkTools : AFHTTPSessionManager
//请求类型
typedef NS_ENUM(NSInteger,requestMethod){
    ADRequestMethodGET,
    ADRequestMethodPOST
};

typedef void(^completionCallBack)(id responseObject,NSError *error);

//单例
+ (instancetype)shareNetworkTools;

- (void)requestData:(requestMethod)methodType urlStr:(NSString *)url params:(NSDictionary *)params completion:(completionCallBack)completion;
@end
