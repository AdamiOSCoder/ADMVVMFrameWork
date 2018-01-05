//
//  CustomCellModel.h
//  demo
//
//  Created by Adam的Apple on 2017/12/18.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import <Foundation/Foundation.h>


@class Person;
@interface CustomCellModel : NSObject 
@property(nonatomic,strong)Person *person;
@property (copy, nonatomic) NSString *nameText;
@property (copy, nonatomic) NSString *ageText;

- (instancetype)initWithModel:(Person *)person;
@end
