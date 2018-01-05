//
//  ADMainTaBarController.m
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "ADMainTaBarController.h"
#import "ADHomeViewController.h"
#import "ADBaseNavController.h"
#import "ADLoanViewController.h"
#import "ADSettingViewController.h"

@interface ADMainTaBarController ()

@end

@implementation ADMainTaBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    [self setControllers];
}

- (void)setControllers{
    ADHomeViewController *home = [[ADHomeViewController alloc] init];
    ADBaseNavController *nav1 = [[ADBaseNavController alloc] initWithRootViewController:home];
    
    ADLoanViewController *loan = [[ADLoanViewController alloc] init];
    ADBaseNavController *nav2 = [[ADBaseNavController alloc] initWithRootViewController:loan];
    
    ADSettingViewController *setting = [[ADSettingViewController alloc] init];
    ADBaseNavController *nav3 = [[ADBaseNavController alloc] initWithRootViewController:setting];
    
    nav1.tabBarItem=[self tabBarItemWithOriImage:@"home_normal" withSelectImage:@"home_selected" withTitle:@"首页"];
    nav2.tabBarItem=[self tabBarItemWithOriImage:@"loan_normal" withSelectImage:@"loan_selected" withTitle:@"借款"];
    nav3.tabBarItem=[self tabBarItemWithOriImage:@"mine_normal" withSelectImage:@"mine_selected" withTitle:@"我的"];
    
    self.viewControllers=@[nav1,nav2,nav3];
}

- (UITabBarItem *)tabBarItemWithOriImage:(NSString *)original withSelectImage:(NSString *)selected withTitle:(NSString *)title{
    UIImage *Original = [[UIImage imageNamed:original]
                         imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UIImage *Selected = [[UIImage imageNamed:selected]
                         imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    UITabBarItem *menuTabBarItem = [[UITabBarItem alloc] initWithTitle:title
                                                                 image:Original
                                                         selectedImage:Selected];
    return menuTabBarItem;
}
@end
