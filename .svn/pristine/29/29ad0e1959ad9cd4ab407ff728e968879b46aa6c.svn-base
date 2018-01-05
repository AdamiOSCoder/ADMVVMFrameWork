//
//  ADSettingTableViewCell.m
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "ADSettingTableViewCell.h"
#import "ADSettingCellModel.h"

@interface ADSettingTableViewCell()

@end


@implementation ADSettingTableViewCell

- (void)awakeFromNib {
    [super awakeFromNib];
    // Initialization code
}

- (void)bindWithModel:(ADSettingCellModel *)model{
    self.settingModel = model;
    self.nameLabel.text = model.nameText;
    self.ageLabel.text = model.ageText;
}

+ (UINib *)nib
{
    return [UINib nibWithNibName:@"ADSettingTableViewCell" bundle:nil];
}
@end
