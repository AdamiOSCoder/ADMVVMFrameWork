//
//  ADTabBar.m
//  WantToBorrowMoney
//
//  Created by Adam的Apple on 2017/12/22.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "ADTabBar.h"
#import <SDWebImage/UIImageView+WebCache.h>

@interface ADTabBar()

/** 当前选中的按钮 */
@property(nonatomic,strong) UIButton *selectedBtn;
@end

@implementation ADTabBar


- (void)setItems:(NSArray *)items
{
    _items = items;
    for (int i=0;i<items.count;i++) {
        UIButton *btn = [UIButton buttonWithType:UIButtonTypeCustom];
        [btn.imageView sd_setImageWithURL:[NSURL URLWithString:[NSString stringWithFormat:@"%@",items[i]]]];
        btn.tag = i;
        [btn addTarget:self action:@selector(btnDidOnClick:) forControlEvents:UIControlEventTouchUpInside];
        [self addSubview:btn];
    }
}

- (void)btnDidOnClick:(UIButton *)btn{
    
}

@end
