//
//  ADTabBar.h
//  WantToBorrowMoney
//
//  Created by Adam的Apple on 2017/12/22.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//


#import <UIKit/UIKit.h>

/**
 若要自定义tabBar，可以完善这个类
 */

@class ADTabBar;
@protocol ADTabBarDelegate <NSObject>

/** 控制器遵守该协议后，用于传递tabBar当前选中的按钮的索引给控制器 */
- (void)tabBar:(ADTabBar *)tabBar withSelectedIndex:(NSInteger)selectedIndex;

@end

@interface ADTabBar : UIView

/** tabBar的item数组 */
@property (nonatomic,strong) NSArray *items;
/** tabBar所属的tabBarController */
@property (nonatomic,strong) UITabBarController *tabBarController;


@end
