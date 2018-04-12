//
//  NSObject+LXHud.h
//  LXQRCodeExample
//
//  Created by 漫漫 on 2018/4/8.
//  Copyright © 2018年 漫漫. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "MBProgressHUD.h"

@interface NSObject (LXHud)
+ (MBProgressHUD *)showMessag:(NSString *)message toView:(UIView *)view;

+ (MBProgressHUD *)showMessag:(NSString *)message toView:(UIView *)view afterDelay:(NSTimeInterval)second;

+ (MBProgressHUD *)showMessag:(NSString *)message toView:(UIView *)view offset:(CGPoint)offset;
+(void)hideforView:(UIView *)view;
@end
