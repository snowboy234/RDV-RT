//
//  One2ViewController.m
//  转场
//
//  Created by 田伟 on 2017/9/6.
//  Copyright © 2017年 田伟. All rights reserved.
//

#import "One2ViewController.h"

@interface One2ViewController ()

@end

@implementation One2ViewController

// 页面完全显示出来隐藏tabbar
- (void)viewWillAppear:(BOOL)animated {
    TWLogFunc
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
    [super viewWillAppear:animated];
}

//- (void)viewWillDisappear:(BOOL)animated {
//    [[self rdv_tabBarController] setTabBarHidden:NO animated:YES];
//    [super viewWillDisappear:animated];
//}

//- (void)viewDidDisappear:(BOOL)animated{
//    TWLogFunc
//    [[self rdv_tabBarController] setTabBarHidden:NO animated:YES];
//    [super viewDidDisappear:animated];
//}



- (void)viewDidLoad {
    [super viewDidLoad];
    TWLogFunc
    [[self rdv_tabBarController] setTabBarHidden:YES animated:YES];
    UIButton * center = [UIButton buttonWithType:UIButtonTypeCustom];
    [center setTitle:@"返回" forState:UIControlStateNormal];
    center.titleLabel.textAlignment = NSTextAlignmentCenter;
    center.frame = CGRectMake((TWScreenWidth - 100) * 0.5, 100, 100, 44);
    [center addTarget:self action:@selector(centerClick) forControlEvents:UIControlEventTouchUpInside];
    [self.view addSubview:center];
    self.view.backgroundColor = TWRandomColor;
}

- (void)centerClick{
    [self dismissViewControllerAnimated:YES completion:nil];
}



@end
