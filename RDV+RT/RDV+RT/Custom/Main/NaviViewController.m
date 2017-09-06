//
//  NaviViewController.m
//  RDVTabBarController的使用
//
//  Created by 田伟 on 2017/9/6.
//  Copyright © 2017年 田伟. All rights reserved.
//

#import "NaviViewController.h"

@interface NaviViewController ()<UIGestureRecognizerDelegate>

@end

@implementation NaviViewController

+ (void)load{
    // 拿到所有使用当前类作为导航栏的外观
    UINavigationBar * navBar = [UINavigationBar appearanceWhenContainedIn:self, nil];
    // ios9.0 以后使用
//    UINavigationBar * navBar = [UINavigationBar appearanceWhenContainedInInstancesOfClasses:@[[UINavigationBar class]]];
    // 设置导航栏上文字的大小
    NSMutableDictionary * dict = [NSMutableDictionary dictionary];
    dict[NSFontAttributeName] = [UIFont boldSystemFontOfSize:30];
    dict[NSForegroundColorAttributeName] = [UIColor cyanColor];
    [navBar setTitleTextAttributes:dict];
    navBar.barTintColor = [UIColor orangeColor];
}


@end
