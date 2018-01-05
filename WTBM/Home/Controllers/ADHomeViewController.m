//
//  ADHomeViewController.m
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "ADHomeViewController.h"
#import "ADDataSource.h"
#import "Person.h"
#import "CustomTableViewCell.h"
#import "CustomCellModel.h"
#import "ADNetWorkTools.h"
#import "URLDefine.h"
#import "ADNormalHeader.h"
#import "ADRefreshGifHeader.h"

#import <MJRefresh/MJRefresh.h>

static NSString * const PersonCellIdentifier = @"CustomTableViewCell";

@interface ADHomeViewController ()<UITableViewDelegate>
@property(nonatomic,strong)ADDataSource *ADDataSource;
@property(nonatomic,strong)UITableView *adTableView;
@end

@implementation ADHomeViewController
{
    NSArray *_adArray;
    NSDictionary *_adDic;
    NSMutableArray *_tempArray;
}

- (void)viewDidLoad {
    [super viewDidLoad];
    [self initTitleView:@"首页"];
    [self setBackColor];
    
    [self requestServerData];
    [self setUpTableView];
   
}

#pragma mark 处理从服务器返回的数据转化为模型
- (void)requestServerData{
    
    //网络数据请求
    [[ADNetWorkTools shareNetworkTools] requestData:ADRequestMethodPOST urlStr:MemLevDes_URL params:nil completion:^(id responseObject, NSError *error) {
        
        //判断responseObject 返回的值,调用方法判断是哪种
        [self noDataImage:@"无网络图片"];
        
        if(responseObject){

        }else{

        }
    }];
    
    //测试网络请求类
    _adArray = @[@{@"name":@"小王",@"age":@"23"},@{@"name":@"小张",@"age":@"26"}];
    _tempArray = [[NSMutableArray alloc] init];
    
    for(NSDictionary *dic in _adArray){
        Person *person = [MTLJSONAdapter modelOfClass:[Person class] fromJSONDictionary:dic error:nil];
        [_tempArray addObject:person];
    }
    
    //NSLog(@"---===%@",_tempArray);
    [self.adTableView reloadData];
    
    //结束刷新
    [self.adTableView.mj_header endRefreshing];
}

#pragma mark 添加tableView
- (void)setUpTableView{
    
    TableViewCellConfigureBlock configureCell = ^(CustomTableViewCell *cell,Person *person){
        
        CustomCellModel *customModel = [[CustomCellModel alloc] initWithModel:person];
        [cell bindWithCellModel:customModel];
        
    };
    
    
    // NSLog(@"---======%ld",_tempArray.count);
    
    self.ADDataSource = [[ADDataSource alloc] initWithItems:_tempArray cellIdentifier:PersonCellIdentifier configureCellBlock:configureCell];
    
    self.adTableView.dataSource = self.ADDataSource;
    
    [self.adTableView registerNib:[CustomTableViewCell nib] forCellReuseIdentifier:PersonCellIdentifier];
    
    [self.view addSubview:self.adTableView];
    
    //下拉刷新(常规)
//    self.adTableView.mj_header = [ADNormalHeader headerWithRefreshingBlock:^{
//        
//        //请求网络数据
//        [self requestServerData];
//        
//    }];
    
    //下拉刷新(带动画)
    self.adTableView.mj_header = [ADRefreshGifHeader headerWithRefreshingBlock:^{
        //请求网络数据
        [self requestServerData];
    }];
}

#pragma mark UITableViewDelegate
- (CGFloat)tableView:(UITableView *)tableView heightForRowAtIndexPath:(NSIndexPath *)indexPath{
    return 100;
}

- (void)tableView:(UITableView *)tableView didSelectRowAtIndexPath:(NSIndexPath *)indexPath{
    
}

//懒加载
- (UITableView *)adTableView{
    if(!_adTableView){
        _adTableView = [[UITableView alloc] initWithFrame:CGRectMake(0, 0, [UIScreen mainScreen].bounds.size.width, [UIScreen mainScreen].bounds.size.height)];
        _adTableView.delegate = self;
        _adTableView.tableFooterView = [UIView new];
    }
    return _adTableView;
}
@end
