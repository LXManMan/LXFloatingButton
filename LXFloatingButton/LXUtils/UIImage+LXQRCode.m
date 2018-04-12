//
//  UIImage+LXQRCode.m
//  LXQRCode
//
//  Created by zhongzhi on 2017/9/14.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "UIImage+LXQRCode.h"

@implementation UIImage (LXQRCode)
+(UIImage *)LX_ImageOfQRFromURL:(NSString *)urlStr codeSize:(CGFloat)codeSize{
    
    if (urlStr ==nil || [urlStr isEqualToString:@""]) {
        return  nil;
    }
    
    //限制大小
    codeSize = [self limitCodeSize:codeSize];
    
    CIImage *outputImage = [self QRFromUrl:urlStr];
    
  UIImage *finalImage =  [self createUIImageFormCIImage:outputImage withSize:codeSize];
    
    return finalImage;
}

+(UIImage *)LX_ImageOfQRFromURL:(NSString *)urlStr codeSize:(CGFloat)codeSize logoName:(NSString *)logoName  radius: (CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor{
    
    
    UIImage *orginQRImage =[self LX_ImageOfQRFromURL:urlStr codeSize:codeSize];
    
    if (!logoName || [logoName isEqualToString:@""]) {
        NSLog(@"未输入logo图片名字");
        return  orginQRImage;
    }
    
    UIImage *finalImage ;
        
    //根据二维码图片设置生成水印图片rect
    CGRect waterImageRect = [self getWaterImageRectFromOutputQRImage:orginQRImage];
    
    UIImage *logoImage =[[UIImage imageNamed:logoName]LX_scaleToSize:waterImageRect.size];
    //生成水印图片 rect 从00 开始LX_scaleToSize:waterImageRect.size
    UIImage *waterImage =[UIImage LX_ClipImageRadiousWithImage:logoImage circleRect:CGRectMake(0, 0, waterImageRect.size.width, waterImageRect.size.height) radious:radius borderWith:borderWidth borderColor:borderColor];
    
  
    //添加水印图片
    
    finalImage =[UIImage LX_WaterImageWithImage:orginQRImage waterImage:waterImage waterImageRect:waterImageRect];
    
     
    
    return finalImage;
    
}
+(CGRect)getWaterImageRectFromOutputQRImage:(UIImage *)orginQRImage{
    
     CGSize linkSize = CGSizeMake(orginQRImage.size.width / 4, orginQRImage.size.height / 4);
    
    CGFloat linkX = (orginQRImage.size.width -linkSize.width)/2;
    CGFloat linkY = (orginQRImage.size.height -linkSize.height)/2;

    
    return CGRectMake(linkX, linkY, linkSize.width, linkSize.height);
}
//限制大小
+(CGFloat)limitCodeSize:(CGFloat)codeSize
{
    codeSize = MAX(160, codeSize);
    codeSize = MIN(CGRectGetWidth([UIScreen mainScreen].bounds) - 80, codeSize);
    return codeSize;
}
//根据url 创建CIImage
+(CIImage *)QRFromUrl:(NSString *)urlStr{
    // 1、创建滤镜对象
    CIFilter *filter = [CIFilter filterWithName:@"CIQRCodeGenerator"];
    
    // 恢复滤镜的默认属性
    [filter setDefaults];
    
    // 2、设置数据
    NSString *info = urlStr;
    // 将字符串转换成
    NSData *infoData = [info dataUsingEncoding:NSUTF8StringEncoding];
    
    // 通过KVC设置滤镜inputMessage数据
    [filter setValue:infoData forKeyPath:@"inputMessage"];
    
    // 3、获得滤镜输出的图像
    CIImage *outputImage = [filter outputImage];
    
    return outputImage;
}

/** 根据CIImage生成指定大小的UIImage */
+ (UIImage *)createUIImageFormCIImage:(CIImage *)image withSize:(CGFloat)size {
    CGRect extent = CGRectIntegral(image.extent);
    CGFloat scale = MIN(size/CGRectGetWidth(extent), size/CGRectGetHeight(extent));
    
    // 1.创建bitmap;
    size_t width = CGRectGetWidth(extent) * scale;
    size_t height = CGRectGetHeight(extent) * scale;
    CGColorSpaceRef cs = CGColorSpaceCreateDeviceGray();
    CGContextRef bitmapRef = CGBitmapContextCreate(nil, width, height, 8, 0, cs, (CGBitmapInfo)kCGImageAlphaNone);
    CIContext *context = [CIContext contextWithOptions:nil];
    CGImageRef bitmapImage = [context createCGImage:image fromRect:extent];
    CGContextSetInterpolationQuality(bitmapRef, kCGInterpolationNone);
    CGContextScaleCTM(bitmapRef, scale, scale);
    CGContextDrawImage(bitmapRef, extent, bitmapImage);
    
    // 2.保存bitmap到图片
    CGImageRef scaledImage = CGBitmapContextCreateImage(bitmapRef);
    CGContextRelease(bitmapRef);
    CGImageRelease(bitmapImage);
    return [UIImage imageWithCGImage:scaledImage];
}

@end
