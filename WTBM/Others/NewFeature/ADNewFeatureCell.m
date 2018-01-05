//
//  ADNewFeatureCell.m
//  模仿项目11
//
//  Created by Adam on 16/3/2.
//  Copyright © 2016年 Adam. All rights reserved.
//

#import "ADNewFeatureCell.h"
#import "ADMainTaBarController.h"

@interface ADNewFeatureCell()
@property(nonatomic,strong)UIButton *startBtn;

@end
@implementation ADNewFeatureCell

- (void)awakeFromNib{
    [super awakeFromNib];
}
- (void)addStartBtn{
    UIButton *btn=[UIButton buttonWithType:UIButtonTypeCustom];
    [btn setBackgroundColor:[UIColor redColor]];
    [btn setTitle:@"立即体验" forState:UIControlStateNormal];
    btn.titleLabel.font=[UIFont systemFontOfSize:13];
    [btn addTarget:self action:@selector(start) forControlEvents:UIControlEventTouchUpInside];
    btn.layer.cornerRadius=3;
    [self.contentView addSubview:btn];
    self.startBtn=btn;
}

- (void)layoutSubviews{
    [super layoutSubviews];
    CGFloat W=100;
    CGFloat H=30;
    CGFloat X=(WIDTH-W)/2;
    CGFloat Y=HEIGHT-100;
    self.startBtn.frame=CGRectMake(X, Y, W, H);
}

- (void)start{
    ADMainTaBarController *main = [[ADMainTaBarController alloc] init];
    [UIApplication sharedApplication].keyWindow.rootViewController = main;
}

@end
