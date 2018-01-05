//
//  ADSettingTableViewCell.h
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import <UIKit/UIKit.h>
@class ADSettingCellModel;
@interface ADSettingTableViewCell : UITableViewCell

@property (weak, nonatomic) IBOutlet UILabel *nameLabel;
@property (weak, nonatomic) IBOutlet UILabel *ageLabel;
@property(nonatomic,strong) ADSettingCellModel *settingModel;
- (void)bindWithModel:(ADSettingCellModel *)model;
+ (UINib *)nib;
@end
