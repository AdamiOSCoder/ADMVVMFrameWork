//
//  ADSettingViewController.m
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "ADSettingViewController.h"
#import "ADLoginViewController.h"

@interface ADSettingViewController ()<UITableViewDataSource, UITableViewDelegate>
@property(nonatomic, strong)UITableView     *tableView;
@property(nonatomic, strong)UIImageView     *headerBackView;        // 头像背景图片
@property(nonatomic, strong)UIImageView     *photoImageView;        // 头像图片
@property(nonatomic, strong)UILabel         *userNameLabel;         // 用户名label
@property(nonatomic, strong)UILabel         *introduceLabel;        // 简介label
@property(nonatomic, strong)UIView          *tableViewHeaderView;   // tableView头部视图
@property(nonatomic, assign)NSInteger       imageHeight;            // 背景图片的高度
@end

@implementation ADSettingViewController
{
   
    
}

- (void)viewWillAppear:(BOOL)animated{
    [super viewWillAppear:animated];
    [self showTabBar];
}


- (void)viewDidLoad {
    [super viewDidLoad];
     [self initTitleView:@"我的"];
    [self setBackColor];
    self.view.backgroundColor = [UIColor whiteColor];
    
    _imageHeight = 240;// 背景图片的高度
    _tableView = [[UITableView alloc] initWithFrame:self.view.frame style:UITableViewStylePlain];
    _tableView.dataSource = self;
    _tableView.delegate = self;
    [self.view addSubview:_tableView];
    [self createTableViewHeaderView];
}

#pragma mark - 创建头视图
- (void)createTableViewHeaderView
{
    _tableViewHeaderView = [[UIView alloc] initWithFrame:CGRectMake(0, 0, WIDTH, _imageHeight)];
    
    // 背景图
    _headerBackView = [[UIImageView alloc] init];
    _headerBackView.frame = CGRectMake(0, 0, WIDTH, _imageHeight);
    _headerBackView.image = [UIImage imageNamed:@"bg"];
    [_tableViewHeaderView addSubview:_headerBackView];
    
    // 头像
    _photoImageView = [[UIImageView alloc] initWithFrame:CGRectMake((WIDTH - 100) / 2, 50, 100, 100)];
    [self.tableViewHeaderView addSubview:self.photoImageView];
    _photoImageView.layer.cornerRadius = 50;
    _photoImageView.layer.masksToBounds = YES;
    _photoImageView.image = [UIImage imageNamed:@"head"];
    _photoImageView.userInteractionEnabled = YES;
    UITapGestureRecognizer *gesture = [[UITapGestureRecognizer alloc] initWithTarget:self action:@selector(tapHead)];
    [_photoImageView addGestureRecognizer:gesture];
    
    // 用户名
    _userNameLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_photoImageView.frame) + 10, WIDTH, 20)];
    _userNameLabel.font = [UIFont systemFontOfSize:16];
    _userNameLabel.text = @"Adam";
    _userNameLabel.textAlignment = 1;
    _userNameLabel.textColor = [UIColor whiteColor];
    [_tableViewHeaderView addSubview:self.userNameLabel];
    
    // 简介
    _introduceLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, CGRectGetMaxY(_userNameLabel.frame) + 10, WIDTH, 20)];
    _introduceLabel.alpha = 0.7;
    _introduceLabel.text = @"点击头像登录";
    _introduceLabel.textAlignment = 1;
    _introduceLabel.font = [UIFont systemFontOfSize:12];
    _introduceLabel.textColor = [UIColor whiteColor];
    [_tableViewHeaderView addSubview:_introduceLabel];
    
    self.tableView.tableHeaderView = _tableViewHeaderView;
}

#pragma mark scrollViewDelegate
- (void)scrollViewDidScroll:(UIScrollView *)scrollView
{
    CGFloat width = self.view.frame.size.width;// 图片的宽度
    CGFloat yOffset = scrollView.contentOffset.y;// 偏移的y值
    //NSLog(@"%f",yOffset);
    if (yOffset < 0) {
        CGFloat totalOffset = _imageHeight + ABS(yOffset);
        CGFloat f = totalOffset / _imageHeight;
        self.headerBackView.frame = CGRectMake(- (width * f - width) / 2, yOffset, width * f, totalOffset);// 拉伸后的图片的frame应该是同比例缩放
    }
}

- (NSInteger)tableView:(UITableView *)tableView numberOfRowsInSection:(NSInteger)section
{
    return 30;
}

- (UITableViewCell *)tableView:(UITableView *)tableView cellForRowAtIndexPath:(NSIndexPath *)indexPath
{
    UITableViewCell *cell = [tableView dequeueReusableCellWithIdentifier:@"cell"];
    if (!cell) {
        cell = [[UITableViewCell alloc] initWithStyle:UITableViewCellStyleDefault reuseIdentifier:@"cell"];
    }
    return cell;
}

#pragma mark 头部点击事件
- (void)tapHead{
    ADLoginViewController *login = [[ADLoginViewController alloc] init];
    login.returnName = ^(NSString *name) {
        _userNameLabel.text = name;
        _introduceLabel.text = [NSString stringWithFormat:@"欢迎Vip超级用户%@",name];
    };
    [self.navigationController pushViewController:login animated:YES];
    
}

@end
