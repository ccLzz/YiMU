//
//  MessagePrepareManager.h
//  易牧售后
//
//  Created by yimu on 16/2/18.
//  Copyright © 2016年 北京易牧科技有限公司. All rights reserved.
//

#import <Foundation/Foundation.h>

@interface MessagePrepareManager : NSObject
//录制视频完毕后的路径，如果没有录制，则为nil
@property (nonatomic,strong) NSURL *videoPath;
////拍照完毕后的图片对象，如果没有拍摄，则为nil
//@property (nonatomic,strong) UIImage *pickedImage;
//拍照完毕后的路径，如果没有拍照，则为nil
@property (nonatomic,strong) NSURL *imageAssetURL;
//单例方法
+(instancetype)share;
//开始录音
-(void)startRecord;
////开始视频录制，viewController为想要从哪个界面推出
//-(void)startVideoRecordWithViewController:(UIViewController *)viewController;
////开始拍照，viewController为想要从哪个界面推出
//-(void)startImagePickerWithViewController:(UIViewController *)viewController;
//停止录音，返回值为录音文件的URL
-(NSURL *)stopRecord;


@end
