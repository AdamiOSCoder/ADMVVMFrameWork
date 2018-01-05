//
//  ADDataSource.m
//  demo
//
//  Created by Adam的Apple on 2017/12/19.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "ADDataSource.h"
#import <UIKit/UIKit.h>

@interface ADDataSource()<UITableViewDelegate,UITableViewDataSource>
@property(nonatomic,strong)NSArray *items;
@property(nonatomic,copy)NSString *cellIdentifier;
@property(nonatomic,copy)TableViewCellConfigureBlock configureCellBlock;
@end

@implementation ADDataSource
- (id)initWithItems:(NSArray *)anItems cellIdentifier:(NSString *)cellIdentifier configureCellBlock:(TableViewCellConfigureBlock)configureCellBlock{
    self = [super init];
    if(self){
        self.items = anItems;
        self.cellIdentifier = cellIdentifier;
        self.configureCellBlock = [configureCellBlock copy];
    }
    return self;
}

- (id)itemAtIndexPath:(NSIndexPath *)indexPath{
    return self.items[(NSUInteger) indexPath.row];
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section{
    return self.items.count;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath{
    
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:self.cellIdentifier forIndexPath:indexPath];
    id item = [self itemAtIndexPath:indexPath];
    self.configureCellBlock(cell, item);
    return cell;
}

//- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
//    [tableView deselectRowAtIndexPath:indexPath animated:true];
//    id<CellActionDispatchable> cellModel = [self.items objectAtIndex:indexPath.row];
//    NSString * selName = cellModel.selNameForDidSelected;
//    NSLog(@"---=====%@",selName);
//    //[self performSelector:NSSelectorFromString(selName) withObject:indexPath];
//}


@end
