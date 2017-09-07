//
//  PartentViewController.m
//  RDVTabBarController的使用
//
//  Created by 田伟 on 2017/9/6.
//  Copyright © 2017年 田伟. All rights reserved.
//  一级页面继承

#import "PartentViewController.h"
#import "RDVTabBarController.h"

@interface PartentViewController ()

@end

@implementation PartentViewController

//  页面完全显示出来在弹出tabbar
- (void)viewDidAppear:(BOOL)animated{
    [[self rdv_tabBarController] setTabBarHidden:NO animated:YES];
    [super viewDidAppear:animated];
}

//- (void)viewWillDisappear:(BOOL)animated {
//    [[self rdv_tabBarController] setTabBarHidden:NO animated:YES];
//    [super viewWillDisappear:animated];
//}

@end
