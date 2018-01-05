//
//  ADBaseViewController.m
//  WTBM
//
//  Created by Adam的Apple on 2017/12/26.
//  Copyright © 2017年 Adam的Apple. All rights reserved.
//

#import "ADBaseViewController.h"
#import <AFNetworking/AFNetworking.h>

@interface ADBaseViewController ()

@property(nonatomic,assign)BOOL isBackButton;     //是否需要返回按钮
@property(nonatomic, strong) UIButton* leftBtn;
@property(nonatomic, strong) UIButton* rightBtn;
@property(nonatomic,strong)UIImageView *noDataImage;
@end

@implementation ADBaseViewController
{
    UILabel *_titleLabel;
}

- (void)viewDidLoad {
    [super viewDidLoad];
}

//修改导航栏的标题文字
- (void)initTitleView:(NSString *)title
{
    if (_titleLabel == nil) {
        _titleLabel = [[UILabel alloc] initWithFrame:CGRectMake(0, 0, 150, 30)];
    }
    //titleLabel.textColor = UIColorFromRGB(0x212121);
    _titleLabel.textColor = [UIColor blackColor];
    _titleLabel.textAlignment = NSTextAlignmentCenter;
    _titleLabel.backgroundColor = [UIColor clearColor];
    _titleLabel.font = [UIFont systemFontOfSize:18.0f];
    _titleLabel.text = title;
    self.navigationItem.titleView = _titleLabel;
}

#pragma mark 设置背景颜色
- (void)setBackColor{
    self.view.backgroundColor = [UIColor whiteColor];
}

#pragma mark 隐藏tabBar
- (void)hiddenTabBar{
    self.tabBarController.tabBar.hidden = YES;
}

#pragma mark 显示tabBar
- (void)showTabBar{
    self.tabBarController.tabBar.hidden = NO;
}

#pragma mark 设置导航栏右按钮
- (void)setNavRightButtonWithTarget:(id)target withFunction:(SEL)function normalImg:(NSString *)normalImg highImg:(NSString *)highImg WithTitle:(NSString *)title
{
    CGFloat rightBtnWidth;
    if (title.length <= 0)
    {
        rightBtnWidth = 18.0;
    }
    else
    {
        CGSize size = [title sizeWithFont:[UIFont boldSystemFontOfSize:16.0f] constrainedToSize:CGSizeMake(200, 25) lineBreakMode:(NSLineBreakByCharWrapping)];
        
//        NSMutableParagraphStyle *style = [[NSParagraphStyle defaultParagraphStyle] mutableCopy];
//        style.lineBreakMode = NSLineBreakByWordWrapping;
//        style.alignment = NSTextAlignmentLeft;
//         NSAttributedString *string = [[NSAttributedString alloc] initWithString:title attributes:@{NSFontAttributeName:[UIFont systemFontOfSize:16], NSParagraphStyleAttributeName:style}];
//        CGSize size = [title boundingRectWithSize:CGSizeMake(200, 25) options:NSStringDrawingUsesFontLeading attributes:string context:nil].size;
        rightBtnWidth = size.width;
    }
    
    UIButton* rightBtn=[[UIButton alloc]initWithFrame:CGRectMake(296, 10, rightBtnWidth, 18)];
    rightBtn.exclusiveTouch = YES;
    rightBtn.titleLabel.font = [UIFont systemFontOfSize:16.0f];
    [rightBtn setTitle:title forState:(UIControlStateNormal)];
    
    [rightBtn setBackgroundImage:[UIImage imageNamed:normalImg]  forState:UIControlStateNormal];
    [rightBtn setBackgroundImage:[UIImage imageNamed:normalImg]  forState:UIControlStateHighlighted];
    [rightBtn setBackgroundImage:[UIImage imageNamed:normalImg]  forState:UIControlStateSelected];
    //    [rightBtn setTitleColor:[UIColor colorWithRed:100/255.0 green:100/255.0 blue:100/255.0 alpha:1] forState:UIControlStateNormal];
    [rightBtn setTitleColor:[UIColor whiteColor] forState:UIControlStateNormal];
    [rightBtn addTarget:target action:function forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithCustomView:rightBtn];
    self.navigationItem.rightBarButtonItem = backButtonItem;
    _rightBtn = rightBtn;
}

#pragma mark 设置导航栏左按钮
- (void)setNavLeftButtonWithTarget:(id)target
                      withFunction:(SEL)function
                         normalImg:(NSString *)normalImg
                           highImg:(NSString *)highImg
                         WithTitle:(NSString *)title
{
    CGFloat leftBtnWidth;
    if (title.length <= 0)
    {
        leftBtnWidth = 24.0f;
        
    }
    else
    {
        CGSize size = [title sizeWithFont:[UIFont boldSystemFontOfSize:16.0f] constrainedToSize:CGSizeMake(200, 25) lineBreakMode:(NSLineBreakByCharWrapping)];
        leftBtnWidth = size.width;
    }
    
    UIButton* leftBtn=[[UIButton alloc]initWithFrame:CGRectMake(10, 10, leftBtnWidth, 24)];
    leftBtn.exclusiveTouch = YES;
    [leftBtn setTitle:title forState:(UIControlStateNormal)];
    leftBtn.titleLabel.font = [UIFont boldSystemFontOfSize:16.0f];
    
    [leftBtn setTitleColor:UIColorFromRGB(0x9b9b9b) forState:UIControlStateNormal];
    [leftBtn setImage:[UIImage imageNamed:normalImg] forState:UIControlStateNormal];
    [leftBtn setImage:[UIImage imageNamed:highImg] forState:UIControlStateHighlighted];
    [leftBtn setImage:[UIImage imageNamed:highImg] forState:UIControlStateSelected];
    
    //    [leftBtn setBackgroundImage:[[UIImage imageNamed:normalImg] stretchableImageWithLeftCapWidth:10 topCapHeight:10] forState:UIControlStateNormal];
    //    [leftBtn setBackgroundImage:[[UIImage imageNamed:highImg] stretchableImageWithLeftCapWidth:10 topCapHeight:10] forState:UIControlStateHighlighted];
    //    [leftBtn setBackgroundImage:[[UIImage imageNamed:highImg] stretchableImageWithLeftCapWidth:10 topCapHeight:10] forState:UIControlStateSelected];
    [leftBtn addTarget:target action:function forControlEvents:UIControlEventTouchUpInside];
    UIBarButtonItem *backButtonItem = [[UIBarButtonItem alloc] initWithCustomView:leftBtn];
    self.navigationItem.leftBarButtonItem = backButtonItem;
    
    self.leftBtn = leftBtn;
}

#pragma mark 检查网络状态
- (BOOL)checkNetwork
{
    __block BOOL reach = 1;
    
    /**
     AFNetworkReachabilityStatusUnknown          = -1,  // 未知
     AFNetworkReachabilityStatusNotReachable     = 0,   // 无连接
     AFNetworkReachabilityStatusReachableViaWWAN = 1,   // 3G 花钱
     AFNetworkReachabilityStatusReachableViaWiFi = 2,   // 局域网络,不花钱
     */
    // 如果要检测网络状态的变化,必须用检测管理器的单例的startMonitoring
    [[AFNetworkReachabilityManager sharedManager] startMonitoring];
    
    // 检测网络连接的单例,网络变化时的回调方法
    [[AFNetworkReachabilityManager sharedManager] setReachabilityStatusChangeBlock:^(AFNetworkReachabilityStatus status) {
        //        NSLog(@"%d", (int)status);
        switch (status)
        {
            case AFNetworkReachabilityStatusNotReachable:
                reach = NO;
                break;
                
            case AFNetworkReachabilityStatusReachableViaWWAN:
                reach = YES;
                break;
                
            case AFNetworkReachabilityStatusReachableViaWiFi:
                reach = YES;
                break;
                
            default:
                break;
        }
        
        //        return reach;
    }];
    //    NSLog(@"=======%d",reach);
    return reach;
}

#pragma mark 无数据时的图片
- (void)noDataImage:(NSString *)imageName{
    [self.view addSubview:self.noDataImage];
    self.noDataImage.image = [UIImage imageNamed:imageName];
}

- (UIImageView *)noDataImage{
    if(!_noDataImage){
        _noDataImage = [[UIImageView alloc] initWithFrame:CGRectMake((WIDTH-214)/2+20, (WIDTH-93)/2-64, 214, 93)];
    }
    return _noDataImage;
}

@end
