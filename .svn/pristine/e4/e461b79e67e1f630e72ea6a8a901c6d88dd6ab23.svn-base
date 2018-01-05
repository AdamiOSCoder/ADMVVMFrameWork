//
//  CustomTableViewCell.h
//  demo
//
//  Created by Adam的Apple on 2017/12/18.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class CustomCellModel;
@interface CustomTableViewCell : UITableViewCell
@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property(nonatomic,strong) CustomCellModel  *cellModel;
- (void)bindWithCellModel:(CustomCellModel *)cellModel;
//+ (instancetype)CustomWithTableView:(UITableView *)tableView;
+ (UINib *)nib;
@end
