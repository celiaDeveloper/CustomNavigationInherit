//
//  ParentNaviViewController.h
//  CustomNavigationProject
//
//  Created by xudandan on 16/11/28.
//  Copyright © 2016年 WuLian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface ParentNaviViewController : UIViewController

// NavigationBar
@property (strong, nonatomic) UIView *navBar;

// Nav Bar
- (void)setMainNavigationBar:(BOOL)needBack;
- (void)initTitleViewWithText:(NSString *)title type:(NSInteger)type;


//继承 left right item pressed
- (void)navLeftButtonItemPressed;
- (void)navRightButtonItemPressed;


// 隐藏左Item
- (void)hideLeftNavigationItem;


// 从父View中获取Cell View
- (UIView *)getParentCellView:(UIView *)view;

@end
