//
//  MainViewController.m
//  RDVTabBarController的使用
//
//  Created by 田伟 on 2017/9/6.
//  Copyright © 2017年 田伟. All rights reserved.
//

#import "MainViewController.h"
#import "RDVTabBarItem.h"
#import "OneViewController.h"
#import "TwoViewController.h"
#import "ThreeViewController.h"
#import "FourViewController.h"
#import "NaviViewController.h"

@interface MainViewController ()<RDVTabBarControllerDelegate>
// 记录上一次点击的tabbar的tag值
@property(nonatomic, assign) NSInteger previousClickedTabBarButtonTag;
@end

@implementation MainViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.delegate = self;
    _previousClickedTabBarButtonTag = 0;
    self.tabBar.backgroundView.backgroundColor = [UIColor orangeColor];
    [self setViewControllers:@[
                               [[NaviViewController alloc] initWithRootViewController:[OneViewController new]],
                               [[NaviViewController alloc] initWithRootViewController:[TwoViewController new]],
                               [[NaviViewController alloc] initWithRootViewController:[ThreeViewController new]],
                               [[NaviViewController alloc] initWithRootViewController:[FourViewController new]],
                               ]];
    // 标题
    NSDictionary *tabBarTitleUnselectedDic = @{NSForegroundColorAttributeName:[UIColor yellowColor],NSFontAttributeName:[UIFont systemFontOfSize:15]};
    NSDictionary *tabBarTitleSelectedDic = @{NSForegroundColorAttributeName:[UIColor redColor],NSFontAttributeName:[UIFont systemFontOfSize:15]};
    NSArray * titleArray = @[@"One",@"Two",@"Three",@"Four"];
    // 选中图片
    NSArray * imageNameArray = @[@"11",@"22",@"33",@"44"];
    NSInteger index = 0;
    for (RDVTabBarItem * tabberItem in [[self tabBar] items]) {
        tabberItem.title = titleArray[index];
        tabberItem.tag = index;
        tabberItem.selectedTitleAttributes = tabBarTitleSelectedDic;
        tabberItem.unselectedTitleAttributes = tabBarTitleUnselectedDic;
        // 设置选中(红色)和未选中图片（黄色）
        [tabberItem setFinishedSelectedImage:[UIImage imageNamed:imageNameArray[index]] withFinishedUnselectedImage:[UIImage imageNamed:[NSString stringWithFormat:@"%ld",index + 1]]];
        index++;
    }
}

// 点击下面的标签时显示缩小放大动画
- (BOOL)tabBarController:(RDVTabBarController *)tabBarController shouldSelectViewController:(UIViewController *)viewController{

    // 点击动画
    RDVTabBarItem * select = [self.tabBar.items objectAtIndex:viewController.rdv_tabBarItem.tag];
    //需要实现的帧动画,这里RDVTabBarItem直接是一个UIView,没有子View
    CAKeyframeAnimation *animation = [CAKeyframeAnimation animation];
    animation.keyPath = @"transform.scale";
    animation.values = @[@1.0,@1.1,@0.9,@1.0];
    animation.duration = 0.3;
    animation.calculationMode = kCAAnimationCubic;
    [select.layer addAnimation:animation forKey:nil];
    
    // 重复点击发送通知
    if (_previousClickedTabBarButtonTag == viewController.rdv_tabBarItem.tag) {
        [[NSNotificationCenter defaultCenter] postNotificationName:TabBarButtonDidRepeatClickNotification object:nil];
    }
    _previousClickedTabBarButtonTag = viewController.rdv_tabBarItem.tag;
    return YES;
}

@end
