//
//  UIImage+LXImage.h
//  LXTestPod
//
//  Created by chenergou on 2017/11/9.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LXImage)
//根据图片名字生成图片 原始渲染
+ (UIImage *)LX_imageWithOriginalName:(NSString *)imageName;
//根据颜色生成图片
+ (UIImage *)LX_imageWithColor:(UIColor *)color;

//图片缩小到固定的size
-(UIImage*)LX_scaleToSize:(CGSize)size;

//裁剪图片自定义圆角
+ (UIImage *)LX_ClipImageWithImage:(UIImage *)image circleRect:(CGRect)rect radious:(CGFloat) radious;


//裁剪圆形图片
+ (UIImage *)LX_ClipCircleImageWithImage:(UIImage *)image circleRect:(CGRect)rect;


//裁剪带边框的圆形图片
+ ( UIImage *)LX_ClipCircleImageWithImage:(UIImage *)image circleRect:(CGRect)rect borderWidth:(CGFloat)borderW borderColor:( UIColor *)borderColor;


//裁剪带边框的图片 可设置圆角 边框颜色
+(UIImage *)LX_ClipImageRadiousWithImage:(UIImage *)image circleRect:(CGRect)rect radious:(CGFloat)radious borderWith:(CGFloat)borderW borderColor:( UIColor *)borderColor;

//添加水印图片
+ (UIImage *)LX_WaterImageWithImage:(UIImage *)image waterImage:(UIImage *)waterImage waterImageRect:(CGRect)rect;

@end
