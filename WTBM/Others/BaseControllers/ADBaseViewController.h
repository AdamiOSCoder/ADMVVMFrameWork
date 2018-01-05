//
//  ADBaseViewController.h
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ADBaseViewController : UIViewController

/**
 修改导航栏的标题文字
 */
- (void)initTitleView:(NSString *)title;

/**
 设置Controller的背景色
 */
- (void)setBackColor;

/**
 隐藏TabBar
 */
- (void)hiddenTabBar;

/**
 显示TabBar
 */
- (void)showTabBar;

/**
  设置导航栏右按钮
 */
- (void)setNavRightButtonWithTarget:(id)target
                       withFunction:(SEL)function
                          normalImg:(NSString *)normalImg
                            highImg:(NSString *)highImg
                          WithTitle:(NSString *)title;

/**
 设置导航栏左按钮
 */
- (void)setNavLeftButtonWithTarget:(id)target
                      withFunction:(SEL)function
                         normalImg:(NSString *)normalImg
                           highImg:(NSString *)highImg
                         WithTitle:(NSString *)title;

/**
 检查网络状态
 */
- (BOOL)checkNetwork;

/**
 无数据时添加图片提醒
 */
- (void)noDataImage:(NSString *)imageName;
@end
