//
//  BaseViewController.m
//  转场
//
//  Created by 田伟 on 2017/9/6.
//  Copyright © 2017年 田伟. All rights reserved.
//

#import "BaseViewController.h"
#import "RDVTabBarController.h"

@interface BaseViewController ()

@end

@implementation BaseViewController

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

- (void)viewDidDisappear:(BOOL)animated{
    TWLogFunc
    [[self rdv_tabBarController] setTabBarHidden:NO animated:YES];
    [super viewDidDisappear:animated];
}


@end
