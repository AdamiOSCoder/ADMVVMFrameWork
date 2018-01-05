//
//  Person.m
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "Person.h"

@implementation Person
+ (NSDictionary *)JSONKeyPathsByPropertyKey {
    return @{
             @"name"  : @"name",
             @"age"   : @"age",
             };
}

- (void)setNilValueForKey:(NSString *)key{
    
}

@end
