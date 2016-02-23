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
    self.navigationController.navigationBar.backgroundColor=[UIColor blueColor];
    
    self.navigationItem.leftBarButtonItem.image = [UIImage imageNamed:BACK];

}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated
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
