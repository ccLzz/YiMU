//
//  RepairHomePageController.m
//  易牧售后
//
//  Created by yimu on 16/2/14.
//  Copyright © 2016年 北京易牧科技有限公司. All rights reserved.
//

#import "RepairHomePageController.h"
#import "RepairDetailController.h"
#import "MyDeviceController.h"
#import "DirectionController.h"
#import "ImageNames.h"

@interface RepairHomePageController ()
@property(strong,nonatomic)IBOutlet UIButton *RepairBtn;
@property(strong,nonatomic)IBOutlet UIButton *deviceBtn;
@property(strong,nonatomic)IBOutlet UIButton *OrderBtn;
@property(strong,nonatomic)IBOutlet UIButton *directionBtn;


@end

@implementation RepairHomePageController

- (void)viewDidLoad {
    [super viewDidLoad];
    NSLog(@"didload");
//    //tabbaritem字体
//    //1.正常状态
//    NSMutableDictionary *normalText=[NSMutableDictionary dictionary];
//    normalText[NSForegroundColorAttributeName]=[UIColor colorWithRed:123/255.0 green:123/255.0 blue:123/255.0 alpha:1.0];//这是什么方法
//    [self.tabBarItem setTitleTextAttributes:normalText forState:UIControlStateNormal];
//    
//    //2.选中状态
//    NSMutableDictionary *selectedText=[NSMutableDictionary dictionary];
//    selectedText[NSForegroundColorAttributeName]=[UIColor orangeColor];
//    [self.tabBarItem setTitleTextAttributes:selectedText forState:UIControlStateSelected];
    
    
    
    
    
    
    
//    self.title = @"222";
//    
//    NSMutableDictionary *normalText=[NSMutableDictionary dictionary];
//    normalText[NSForegroundColorAttributeName]=[UIColor redColor];//[UIColor colorWithRed:123/255.0 green:123/255.0 blue:123/255.0 alpha:1.0];//这是什么方法
//    [self.tabBarItem setTitleTextAttributes:normalText forState:UIControlStateNormal];
//    
//    NSMutableDictionary *normalText1=[NSMutableDictionary dictionary];
//    normalText1[NSForegroundColorAttributeName]=[UIColor redColor];//[UIColor colorWithRed:123/255.0 green:123/255.0 blue:123/255.0 alpha:1.0];//这是什么方法
//    [self.tabBarItem setTitleTextAttributes:normalText forState:UIControlStateNormal];
//    //
//    NSMutableDictionary *selectedText=[NSMutableDictionary dictionary];
//    selectedText[NSForegroundColorAttributeName]=[UIColor orangeColor];
//    [self.tabBarItem setTitleTextAttributes:normalText forState:UIControlStateSelected];
//    
//    self.tabBarItem.image=[UIImage imageNamed:REPAIR_LOGO];
//    self.tabBarItem.selectedImage=[UIImage imageNamed:REPAIR_LOGO_CHECKED];

    
}
-(void)awakeFromNib{
    self.tabBarItem.image=[UIImage imageNamed:REPAIR_LOGO];
    self.tabBarItem.title=@"维修主页";
    
        NSMutableDictionary *normalText1=[NSMutableDictionary dictionary];
        normalText1[NSForegroundColorAttributeName]=[UIColor redColor];//[UIColor colorWithRed:123/255.0 green:123/255.0 blue:123/255.0 alpha:1.0];//这是什么方法
        [self.tabBarItem setTitleTextAttributes:normalText1 forState:UIControlStateNormal];
        //
        NSMutableDictionary *selectedText=[NSMutableDictionary dictionary];
        selectedText[NSForegroundColorAttributeName]=[UIColor orangeColor];
        [self.tabBarItem setTitleTextAttributes:selectedText forState:UIControlStateSelected];
    NSLog(@"awakeFromNib");
}

- (instancetype)init
{
    self = [super init];
    if (self) {
        NSLog(@"init");
    }
    return self;
}

- (IBAction)tapRepairBtn:(id)sender
{
    UIStoryboard * sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    RepairHomePageController * rc = [sb instantiateViewControllerWithIdentifier:@"RepairDetail"];
    [self.navigationController pushViewController:rc animated:YES];
    //rc.hidesBottomBarWhenPushed =YES;
    
}

- (IBAction)tapDeviceBtn:(id)sender
{
    
    UIStoryboard * sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    MyDeviceController * Md = [sb instantiateViewControllerWithIdentifier:@"MyDevice"];
    [self.navigationController pushViewController:Md animated:YES];
    //Md.hidesBottomBarWhenPushed =YES;

    
}

-(IBAction)tapDirectionBtn:(id)sender
{
    UIStoryboard *sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    DirectionController *Dc = [sb instantiateViewControllerWithIdentifier:@"Direction"];
    [self.navigationController pushViewController:Dc animated:YES];
    //Dc.hidesBottomBarWhenPushed =YES;
    
}






- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
    
    
    
    
    
}

/*
#pragma mark - Navigation

// In a storyboard-based application, you will often want to do a little preparation before navigation
- (void)prepareForSegue:(UIStoryboardSegue *)segue sender:(id)sender {
    // Get the new view controller using [segue destinationViewController].
    // Pass the selected object to the new view controller.
}
*/

@end
