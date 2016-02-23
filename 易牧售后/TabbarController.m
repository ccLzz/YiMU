//
//  TabbarController.m
//  易牧售后
//
//  Created by 软通 on 16/2/22.
//  Copyright © 2016年 北京易牧科技有限公司. All rights reserved.
//

#import "TabbarController.h"
#import "ImageNames.h"

@implementation TabbarController


-(void)viewDidLoad{
    [super viewDidLoad];
    [self setBarItems];

}




-(void)setBarItems{
    //设置item颜色
    NSMutableDictionary *normalText=[NSMutableDictionary dictionary];
    normalText[NSForegroundColorAttributeName]=[UIColor colorWithRed:123/255.0 green:123/255.0 blue:123/255.0 alpha:1.0];//颜色

    NSMutableDictionary *selectedText=[NSMutableDictionary dictionary];
    selectedText[NSForegroundColorAttributeName]=[UIColor redColor];

    
    NSArray *arr=self.tabBar.items;
    UITabBarItem *item0=arr[0];
    item0.image=[UIImage imageNamed:REPAIR_LOGO];
    item0.selectedImage=[UIImage imageNamed:REPAIR_LOGO_CHECKED];
    [item0 setTitleTextAttributes:normalText forState:UIControlStateNormal];
    [item0 setTitleTextAttributes:selectedText forState:UIControlStateSelected];
    
    
    UITabBarItem *item1=arr[1];
    item1.image=[UIImage imageNamed:MINE_LOGO];
    item1.selectedImage=[UIImage imageNamed:MINE_LOGO_CHECKED];
    [item1 setTitleTextAttributes:normalText forState:UIControlStateNormal];
    [item1 setTitleTextAttributes:selectedText forState:UIControlStateSelected];
    //[UITabBarItem appearance]
}
@end
