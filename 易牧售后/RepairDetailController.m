//
//  RepairDetailController.m
//  易牧售后
//
//  Created by yimu on 16/2/14.
//  Copyright © 2016年 北京易牧科技有限公司. All rights reserved.
//

#import "RepairDetailController.h"
#import "chooseDeviceController.h"
#import "RecordController.h"

@interface RepairDetailController ()<UIActionSheetDelegate,UIImagePickerControllerDelegate,UINavigationControllerDelegate>

@property (weak, nonatomic) IBOutlet UIImageView *image1;
@property (weak, nonatomic) IBOutlet UIImageView *image2;
@property (weak, nonatomic) IBOutlet UIImageView *image3;
@property (weak, nonatomic) IBOutlet UIImageView *image4;
@property (weak, nonatomic) IBOutlet UIButton *selectDevice;
@property (weak, nonatomic) IBOutlet UIButton *tapRecord;
@property (weak, nonatomic) IBOutlet UIButton *selectPhotos;
@property (weak, nonatomic) IBOutlet UIButton *selectPhotos1;
@property (weak, nonatomic) IBOutlet UIButton *selectPhotos2;
@property (weak, nonatomic) IBOutlet UIButton *selectPhotos3;
@property (weak, nonatomic) IBOutlet UIButton *tapSave;



@end

@implementation RepairDetailController


- (void)viewDidLoad {
    [super viewDidLoad];
    
    _selectPhotos.imageView.contentMode= UIViewContentModeScaleAspectFit;
 
    //方法待定，如何去除tabbaritem
//    self.tabBarController.tabBar.hidden = YES;

    //self.tabBarController.hidesBottomBarWhenPushed =YES;
    
    // Do any additional setup after loading the view.
}




- (IBAction)selectDevice:(id)sender
{
    
    UIStoryboard * sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    RepairDetailController * RD = [sb instantiateViewControllerWithIdentifier:@"MyDevice"];
    [self.navigationController pushViewController:RD animated:YES];
    
}


#pragma mark -代理方法





- (IBAction)tapRecord:(id)sender
{
    UIStoryboard * sb = [UIStoryboard storyboardWithName:@"Main" bundle:[NSBundle mainBundle]];
    RecordController * Rc = [sb instantiateViewControllerWithIdentifier:@"Record"];
    [self.navigationController pushViewController:Rc animated:YES];
  
    
}





#pragma mark 相机
- (IBAction)selctPhotos:(id)sender
{
    UIActionSheet *actionSheet = [[UIActionSheet alloc]initWithTitle:@"选取图像" delegate:self cancelButtonTitle:@"取消" destructiveButtonTitle:nil otherButtonTitles:@"相机胶卷",@"相册",@"拍照", nil];
    [actionSheet showInView:self.view];
}


#pragma -mark 调用ActionSheet方法

- (void)actionSheet:(UIActionSheet *)actionSheet clickedButtonAtIndex:(NSInteger)buttonIndex
{
    NSLog(@"%lu",buttonIndex);
    switch (buttonIndex)
    {
        case 0:
        {
            [self imgPickFrom:UIImagePickerControllerSourceTypeSavedPhotosAlbum];
        }
            break;
        case 1:
        {
            [self imgPickFrom:UIImagePickerControllerSourceTypePhotoLibrary];
        }
            break;
        case 2:
        {
            if ([UIImagePickerController isCameraDeviceAvailable:UIImagePickerControllerCameraDeviceFront]) {
                [self imgPickFrom:UIImagePickerControllerSourceTypeCamera];
            }
        }
            break;
        case 3:
        {
            NSLog(@"用户点了取消");
        }
            break;
            
        default:
            break;
    }
}


/**
 *  封装一个方法:
 */

- (void)imgPickFrom:(UIImagePickerControllerSourceType)souType
{
    UIImagePickerController * pickContr = [[UIImagePickerController alloc] init];
    pickContr.sourceType = souType;
    pickContr.allowsEditing = YES;
    pickContr.delegate = self;
    
    if ([UIImagePickerController isSourceTypeAvailable:souType])
    {
        [self presentViewController:pickContr animated:YES completion:nil];
    }
}


#pragma -mark 选取成功之后,显示图片,关闭选取界面

- (void)imagePickerController:(UIImagePickerController *)picker didFinishPickingMediaWithInfo:(NSDictionary *)info
{
    NSLog(@"%@",info);
    UIImage * image = info[UIImagePickerControllerOriginalImage];
    
    NSData *yasuo = UIImageJPEGRepresentation(image, 0.1);
    
    
    
    UIImage *ysimg = [UIImage imageWithData:yasuo];
    [_selectPhotos setImage:ysimg forState:UIControlStateNormal];
    
    [self dismissViewControllerAnimated:YES completion:nil];
}

#pragma -mark 取消,关闭界面
- (void)imagePickerControllerDidCancel:(UIImagePickerController *)picker
{
    [self dismissViewControllerAnimated:YES completion:nil];
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
