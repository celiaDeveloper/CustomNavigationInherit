//
//  ParentNaviViewController.h
//  CustomNavigationProject
//
//  Created by xudandan on 16/11/28.
//  Copyright © 2016年 WuLian. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface XDNavigationViewController : UIViewController


/**
 设置导航栏

 @param back 是否有返回箭头
 */
- (void)setMainNavigationBarHaveBack:(BOOL)back;


/**
 设置导航栏上的标题

 @param title 标题
 */
- (void)initTitleViewWithText:(NSString *)title;


/**
 设置导航栏右边 item的图片

 @param imageName 图片名称
 @param highLightImageName 点中时图片名称
 */
- (void)initRightNavigationBarWithImageName:(NSString *)imageName highLightImageName:(NSString *)highLightImageName;


/**
 继承 left right item pressed
 */
- (void)navLeftButtonItemPressed;
- (void)navRightButtonItemPressed;


/// 隐藏左Item
- (void)hideLeftNavigationItem;


/// 从父View中获取Cell View
- (UIView *)getParentCellView:(UIView *)view;

@end
