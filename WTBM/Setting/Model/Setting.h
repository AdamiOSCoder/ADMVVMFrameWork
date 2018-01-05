//
//  Setting.h
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import <Mantle/Mantle.h>

@interface Setting : MTLModel <MTLJSONSerializing>
@property(nonatomic,copy)NSString *name;
@property(nonatomic,copy)NSString *age;
@end
