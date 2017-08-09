//
//  ParentNaviViewController.m
//  CustomNavigationProject
//
//  Created by xudandan on 16/11/28.
//  Copyright © 2016年 WuLian. All rights reserved.
//

#import "XDNavigationViewController.h"

#define statusBarHeight 20.0f
#define navigationHeight 44.0f

#define leftItemButtonTag 11111
#define rightItemButtonTag 11211
#define titleItemButtonTag 11311


@interface XDNavigationViewController ()

// NavigationBar
@property (strong, nonatomic) UIView *navBar;

@end

@implementation XDNavigationViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    // 取消滚动偏移
    self.automaticallyAdjustsScrollViewInsets = NO;
    
    // Backgound Color
    self.view.backgroundColor = [UIColor whiteColor];
    
}

// Nav Bar
- (void)setMainNavigationBarHaveBack:(BOOL)back {
    
    self.navBar = [[UIView alloc] initWithFrame:CGRectMake(0.0f, 0.0f, self.view.frame.size.width, navigationHeight + statusBarHeight)];
    self.navBar.backgroundColor = NAVIBARBGColor;
    [self.view addSubview:self.navBar];
    
    // Left
    if (back) {
        
        [self initLeftNavigationBarWithImageName:@"icon_back_normal.png" highLightImageName:@"icon_back_pressed.png"];
    }
}


// (继承)Left Nav Button Press
- (void)navLeftButtonItemPressed {
    
    [self.navigationController popViewControllerAnimated:YES];
}

// (继承)Right Nav Button Press
- (void)navRightButtonItemPressed {
    
}


// Nav Title Text
- (void)initTitleViewWithText:(NSString *)title {
    
    UIFont *titleFont = [UIFont boldSystemFontOfSize:20];
    float titleWidth= [title sizeWithAttributes:@{NSFontAttributeName: titleFont}].width;
    CGSize titleLabelSize = CGSizeMake(titleWidth > self.view.frame.size.width - 120.0f ? self.view.frame.size.width - 120.0f : titleWidth, 30.0f);
    CGRect titleFrame = CGRectMake((self.view.frame.size.width - titleLabelSize.width) / 2.0f, self.navBar.frame.origin.y + statusBarHeight + (self.navBar.frame.size.height - statusBarHeight - titleLabelSize.height) / 2.0f, titleLabelSize.width, titleLabelSize.height);
    
    if ([self.navBar viewWithTag:titleItemButtonTag]) {
        
        UILabel *titleLabel = (UILabel *)[self.navBar viewWithTag:titleItemButtonTag];
        titleLabel.frame = titleFrame;
        [titleLabel setText:title];
    } else {
        
        UILabel *titleLabel = [[UILabel alloc] init];
        titleLabel.tag = titleItemButtonTag;
        titleLabel.frame = titleFrame;
        titleLabel.backgroundColor = [UIColor clearColor];
        titleLabel.textColor = [UIColor whiteColor];
        titleLabel.lineBreakMode = NSLineBreakByCharWrapping;
        titleLabel.font = titleFont;
        titleLabel.text = title;
        titleLabel.textAlignment = NSTextAlignmentCenter;
        [self.navBar addSubview:titleLabel];
    }
}

// 隐藏左Item
- (void)hideLeftNavigationItem {
    
    [self.navBar viewWithTag:leftItemButtonTag].hidden = YES;
}

// Left Nav Button
- (void)initLeftNavigationBarWithImageName:(NSString *)imageName highLightImageName:(NSString *)highLightImageName {
    
    if ([self.navBar viewWithTag:leftItemButtonTag]) {
        
        UIButton *leftItemButton = (UIButton *)[self.navBar viewWithTag:leftItemButtonTag];
        [leftItemButton setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        [leftItemButton setImage:[UIImage imageNamed:highLightImageName] forState:UIControlStateHighlighted];
    } else {
        
        UIButton *leftItemButton = [UIButton buttonWithType:UIButtonTypeCustom];
        leftItemButton.tag = leftItemButtonTag;
        leftItemButton.frame = CGRectMake(0.0f, self.navBar.frame.origin.y + statusBarHeight, 60.0f, self.navBar.frame.size.height - statusBarHeight);
        [leftItemButton setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        [leftItemButton setImage:[UIImage imageNamed:highLightImageName] forState:UIControlStateHighlighted];
        [leftItemButton setImageEdgeInsets:UIEdgeInsetsMake((leftItemButton.frame.size.height - 40.0f) / 2, 5.0f, (leftItemButton.frame.size.height - 40.0f) / 2, 15.0f)];
        [leftItemButton addTarget:self action:@selector(navLeftButtonItemPressed) forControlEvents:UIControlEventTouchUpInside];
        [self.navBar addSubview:leftItemButton];
    }
}

// Right Nav Button
- (void)initRightNavigationBarWithImageName:(NSString *)imageName highLightImageName:(NSString *)highLightImageName {
    
    if ([self.navBar viewWithTag:rightItemButtonTag]) {
        
        UIButton *rightItemButton = (UIButton *)[self.navBar viewWithTag:rightItemButtonTag];
        [rightItemButton setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        [rightItemButton setImage:[UIImage imageNamed:highLightImageName] forState:UIControlStateHighlighted];
    } else {
        
        UIButton *rightItemButton = [UIButton buttonWithType:UIButtonTypeCustom];
        rightItemButton.tag = rightItemButtonTag;
        rightItemButton.frame = CGRectMake(self.view.frame.size.width - 60.0f, self.navBar.frame.origin.y + statusBarHeight, 60.0f, self.navBar.frame.size.height - statusBarHeight);
        [rightItemButton setImage:[UIImage imageNamed:imageName] forState:UIControlStateNormal];
        if(highLightImageName)[rightItemButton setImage:[UIImage imageNamed:highLightImageName] forState:UIControlStateHighlighted];
        [rightItemButton setImageEdgeInsets:UIEdgeInsetsMake((rightItemButton.frame.size.height - 40.0f) / 2, 15.0f, (rightItemButton.frame.size.height - 40.0f) / 2, 5.0f)];
        [rightItemButton addTarget:self action:@selector(navRightButtonItemPressed) forControlEvents:UIControlEventTouchUpInside];
        [self.navBar addSubview:rightItemButton];
    }
}

// 从父View中获取Cell View
- (UIView *)getParentCellView:(UIView *)view {
    
    UIView *parentView = view.superview;
    if ([parentView isKindOfClass:[UITableViewCell class]]) {
        
        return parentView;
    } else {
        
        return [self getParentCellView:parentView];
    }
}




- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    
}


@end
