//
//  ViewController.m
//  ZHImageViewDemo
//
//  Created by 郑晗 on 2019/3/22.
//  Copyright © 2019年 郑晗. All rights reserved.
//

#import "ViewController.h"
#import "ZHImageView.h"
#import "ZHSaveImageManager.h"
@interface ViewController ()<ZHImageViewDelegate>

@end

@implementation ViewController


- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    [self setupUI];
}

- (void)setupUI
{
    ZHImageView *imageV = [[ZHImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    imageV.imageViewDelegate = self;
    imageV.imageUrl = @"111";
    [self.view addSubview:imageV];
    
}

#pragma mark - ZHImageViewDelegate

- (void)ZHImageViewDelegateSigleTap:(NSString *)imageUrl
{
    
}
- (void)ZHImageViewDelegateLongTap:(NSString *)imageUrl
{
    //长按保存图片
    UIAlertController *alert = [UIAlertController alertControllerWithTitle:@"提示" message:nil preferredStyle:(UIAlertControllerStyleActionSheet)];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"下载图片" style:UIAlertActionStyleDestructive
                                            handler:^(UIAlertAction *action) {
                                                [ZHSaveImageManager saveTheImage:[UIImage imageNamed:imageUrl]];
                                                
                                            }]];
    
    [alert addAction:[UIAlertAction actionWithTitle:@"取消" style:UIAlertActionStyleCancel
                                            handler:^(UIAlertAction *action) {
                                                
                                            }]];
    
    [self presentViewController:alert animated:true completion:nil];
}


@end
