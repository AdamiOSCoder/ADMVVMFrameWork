//
//  ADLoginViewController.m
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "ADLoginViewController.h"

@interface ADLoginViewController ()
@property (weak, nonatomic) IBOutlet UITextField *nameTextField;

@end

@implementation ADLoginViewController

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self hiddenTabBar];
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTitleView:@"登录"];
    [self setBackColor];
}

- (IBAction)loginBtnClick:(id)sender {
    if(self.returnName){
        self.returnName(self.nameTextField.text);
    }
    [self.navigationController popViewControllerAnimated:YES];
}

@end
