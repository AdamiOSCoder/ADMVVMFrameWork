//
//  CustomTableViewCell.m
//  demo
//
//  Created by Adam的Apple on 2017/12/18.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "CustomTableViewCell.h"
#import "CustomCellModel.h"

@implementation CustomTableViewCell

- (void)bindWithCellModel:(CustomCellModel *)cellModel{
    self.cellModel = cellModel;
    self.nameLabel.text = cellModel.nameText;
    self.ageLabel.text = cellModel.ageText;
}

//+ (instancetype)CustomWithTableView:(UITableView *)tableView{
//    NSString *reuseId = @"CustomTableViewCell";
//    //  去缓存池中取可重用的cell
//    CustomTableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:reuseId];
//    if (cell == nil) {
//        cell =  [[[NSBundle mainBundle] loadNibNamed:@"CustomTableViewCell" owner:nil options:nil] lastObject];
//    }
//    return cell;
//}

+ (UINib *)nib
{
    return [UINib nibWithNibName:@"CustomTableViewCell" bundle:nil];
}

@end
