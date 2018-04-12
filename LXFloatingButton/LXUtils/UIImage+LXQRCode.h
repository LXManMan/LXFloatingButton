//
//  UIImage+LXQRCode.h
//  LXQRCode
//
//  Created by zhongzhi on 2017/9/14.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface UIImage (LXQRCode)
//普通的二维码
+(UIImage *)LX_ImageOfQRFromURL:(NSString *)urlStr codeSize:(CGFloat)codeSize;

//带logo 的二维码
+(UIImage *)LX_ImageOfQRFromURL:(NSString *)urlStr codeSize:(CGFloat)codeSize logoName:(NSString *)logoName  radius: (CGFloat)radius borderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor;
@end
