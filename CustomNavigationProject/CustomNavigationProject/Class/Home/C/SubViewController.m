//
//  SubViewController.m
//  CustomNavigationProject
//
//  Created by xudandan on 16/11/29.
//  Copyright © 2016年 WuLian. All rights reserved.
//

#import "SubViewController.h"

@interface SubViewController ()

@end

@implementation SubViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    [self setMainNavigationBarHaveBack:YES];
    [self initTitleViewWithText:@"Sub View"];
    
    
}



- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
