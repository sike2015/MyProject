//
//  RootViewController.m
//  MyProject
//
//  Created by 孝禹苏 on 2017/10/26.
//  Copyright © 2017年 sike. All rights reserved.
//

#import "RootViewController.h"
#import "test1ViewController.h"
#import "test2ViewController.h"

@interface RootViewController ()

@end

@implementation RootViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    
    //安装Tabbar
    [self setupTabbar];
    
    //默认选择第一个
    self.selectedIndex = 0;
}



#pragma mark - 自定义方法

- (void)setupTabbar{
    
    //测试1
    test1ViewController *test1VC  = [[test1ViewController alloc] init];
    [self setupChildViewController:test1VC
                             title:@"测试1"
                         imageName:@"test1"
                 selectedImageName:@"test1"
                          tagIndex:0];
    
    //测试2
    test2ViewController *test2VC  = [[test2ViewController alloc] init];
    test2VC.view.backgroundColor = [UIColor orangeColor];
    [self setupChildViewController:test2VC
                             title:@"测试2"
                         imageName:@"test2"
                 selectedImageName:@"test2"
                          tagIndex:1];
    
    //测试3
    UIViewController *test3VC  = [[UIViewController alloc] init];
    test3VC.view.backgroundColor = [UIColor redColor];
    [self setupChildViewController:test3VC
                             title:@"测试3"
                         imageName:@"test3"
                 selectedImageName:@"test3"
                          tagIndex:2];
    
    //测试2
    UIViewController *test4VC  = [[UIViewController alloc] init];
    test4VC.view.backgroundColor = [UIColor blackColor];
    [self setupChildViewController:test4VC
                             title:@"测试4"
                         imageName:@"test4"
                 selectedImageName:@"test4"
                          tagIndex:3];
    
}

/**
 *  初始化一个子控制器
 *
 *  childVc           需要初始化的子控制器
 *  title             标题
 *  imageName         图标
 *  selectedImageName 选中的图标
 */
- (void)setupChildViewController:(UIViewController *)childVC title:(NSString *)title imageName:(NSString *)imageName selectedImageName:(NSString *)selectedImageName tagIndex:(NSInteger)tagIndex{

    childVC.title = title;
    
    //设置图标
    childVC.tabBarItem.image = [[UIImage imageNamed:imageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //设置选中的图标
    childVC.tabBarItem.selectedImage = [[UIImage imageNamed:selectedImageName] imageWithRenderingMode:UIImageRenderingModeAlwaysOriginal];
    
    //设置文字的样式
    NSMutableDictionary *textAttrs = [NSMutableDictionary dictionary];
    textAttrs[NSForegroundColorAttributeName] = kTabTextColor;
    textAttrs[NSFontAttributeName] = kFont11;
    
    NSMutableDictionary *selectTextAttrs = [NSMutableDictionary dictionary];
    selectTextAttrs[NSForegroundColorAttributeName] = kBlueTextColor;
    selectTextAttrs[NSFontAttributeName] = kFont11;
    
    [childVC.tabBarItem setTitleTextAttributes:textAttrs forState:UIControlStateNormal];
    [childVC.tabBarItem setTitleTextAttributes:selectTextAttrs forState:UIControlStateSelected];
    
    //设置导航空控制器
    UINavigationController *nav = [[UINavigationController alloc] initWithRootViewController:childVC];
    nav.navigationBarHidden = YES;  //隐藏导航条
    nav.tabBarItem.tag = tagIndex;
    
    [self addChildViewController:nav];}

@end
