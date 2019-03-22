# ZHImageView

介绍：这是自己封装的可以对图片进行缩放的图片显示器，里边还包含了长按保存的封装

1.将ZHImageView文件夹拖入自己的工程

2.在需要使用的地方引入头文件

#import "ZHImageView.h"

3.初始化

  ZHImageView *imageV = [[ZHImageView alloc]initWithFrame:CGRectMake(0, 0, self.view.frame.size.width, self.view.frame.size.height)];
    
4.如果需要捕捉点击和长按图片事件

  需要遵循代理<ZHImageViewDelegate>
  
  指定 imageV.imageViewDelegate = self;
  
  并实现代理方法
  //点击事件
  - (void)ZHImageViewDelegateSigleTap:(NSString *)imageUrl
  //长按事件
  - (void)ZHImageViewDelegateLongTap:(NSString *)imageUrl
  
5.如果需要加载网络图片

  可以通过修改ZHImageView.m 文件中的方法 - (void)setImageUrl:(NSString *)imageUrl 自己加载网络图片
  
6.如果需要长按保存功能

  还需引入ZHSaveImageManager文件夹，调用[ZHSaveImageManager saveTheImage:[UIImage imageNamed:imageUrl]];
  
