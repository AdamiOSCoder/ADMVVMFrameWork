//
//  ADDataSource.h
//  demo
//
//  Created by Adam的Apple on 2017/12/19.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

typedef void (^TableViewCellConfigureBlock)(id cell,id item);
@interface ADDataSource : NSObject  <UITableViewDataSource>
- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)cellIdentifier configureCellBlock:(TableViewCellConfigureBlock)configureCellBlock;
- (id)itemAtIndexPath:(NSIndexPath *)indexPath;
@end
