//
//  NaviViewController.m
//  RDVTabBarController的使用
//
//  Created by 田伟 on 2017/9/6.
//  Copyright © 2017年 田伟. All rights reserved.
//

#import "NaviViewController.h"

@interface NaviViewController ()

@end

@implementation NaviViewController

+ (void)load{
    UINavigationBar * navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    NSMutableDictionary * dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:30];
    dict[NSForegroundColorAttributeName] = [UIColor cyanColor];
    [navBar setTitleTextAttributes:dict];
    navBar.barTintColor = [UIColor orangeColor];
}


@end
