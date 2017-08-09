//
//  MainTabBarController.m
//  CustomNavigationProject
//
//  Created by Celia on 2017/8/8.
//  Copyright © 2017年 WuLian. All rights reserved.
//

#import "MainTabBarController.h"
#import "HomeViewController.h"
#import "ShopCarViewController.h"
#import "PersonalCenterViewController.h"

@interface MainTabBarController ()

@end

@implementation MainTabBarController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    
    HomeViewController *mainVC = [[HomeViewController alloc] init];
    [self addChildVCWithTabBarTitle:@"首页" imageName:@"icon_home" selectedImageName:@"icon_home_selected" viewController:mainVC];
    
    ShopCarViewController *shopVC = [[ShopCarViewController alloc] init];
    [self addChildVCWithTabBarTitle:@"购物车" imageName:@"icon_shopCar" selectedImageName:@"icon_shopCar_selected" viewController:shopVC];
    
    PersonalCenterViewController *centerVC = [[PersonalCenterViewController alloc] init];
    [self addChildVCWithTabBarTitle:@"个人中心" imageName:@"icon_personalCenter" selectedImageName:@"icon_personalCenter_selected" viewController:centerVC];
    
}

- (void)addChildVCWithTabBarTitle:(NSString *)title imageName:(NSString *)image selectedImageName:(NSString *)selectedImage viewController:(UIViewController *)VC {
    
    UITabBarItem *item = [[UITabBarItem alloc] initWithTitle:title image:[UIImage imageNamed:image] selectedImage:[UIImage imageNamed:selectedImage]];//imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal
//    [item setTitleTextAttributes:@{NSForegroundColorAttributeName: NAVIBARBGColor} forState:UIControlStateSelected];
    VC.tabBarItem = item;
    
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:VC];
    nav.navigationBar.hidden = YES;
    [self addChildViewController:nav];
}





- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

@end
