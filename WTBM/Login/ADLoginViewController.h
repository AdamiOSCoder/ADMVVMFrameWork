//
//  ADLoginViewController.h
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "ADBaseViewController.h"

typedef void(^returnName)(NSString *name);

@interface ADLoginViewController : ADBaseViewController
@property(nonatomic,copy)returnName returnName;
@end
