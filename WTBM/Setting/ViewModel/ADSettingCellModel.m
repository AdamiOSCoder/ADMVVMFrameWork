//
//  ADSettingCellModel.m
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "ADSettingCellModel.h"
#import "Setting.h"

@implementation ADSettingCellModel
- (instancetype)initWithModel:(Setting *)model{
    if(self = [super init]){
        self.setting = model;
        self.ageText = model.age;
        self.nameText = model.name;
    }
    return self;
}
@end
