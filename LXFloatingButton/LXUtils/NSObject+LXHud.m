//
//  NSObject+LXHud.m
//  LXQRCodeExample
//
//  Created by 漫漫 on 2018/4/8.
//  Copyright © 2018年 漫漫. All rights reserved.
//

#import "NSObject+LXHud.h"

@implementation NSObject (LXHud)
#pragma mark 显示一些信息
+ (MBProgressHUD *)showMessag:(NSString *)message toView:(UIView *)view {
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message;
    hud.margin = 10;
    
    //是否设置黑色背景，这两句配合使用
    hud.bezelView.color = [UIColor blackColor];
    hud.contentColor = [UIColor whiteColor];
    hud.label.font  = Font(15);
    hud.detailsLabel.font =  Font(15);
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    // YES代表需要蒙版效
    return hud;
}

+ (MBProgressHUD *)showMessag:(NSString *)message toView:(UIView *)view afterDelay:(NSTimeInterval)second{
    {
        if (view == nil) view = [UIApplication sharedApplication].keyWindow;
        // 快速显示一个提示信息
        MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
        hud.label.text = message;
        
        //是否设置黑色背景，这两句配合使用
        hud.bezelView.color = [UIColor blackColor];
        hud.contentColor = [UIColor whiteColor];
        hud.margin = 10;
        hud.label.font  = Font(15);
        //    // 再设置模式
        hud.mode = MBProgressHUDModeCustomView;
        
        // 隐藏时候从父控件中移除
        hud.removeFromSuperViewOnHide = YES;
        
        // 1秒之后再消失
        
        if (second <= 0.00) {
            second = 1.0;
        }
        [hud hideAnimated:YES afterDelay:second];
        
        return hud;
    }
}

+ (MBProgressHUD *)showMessag:(NSString *)message toView:(UIView *)view offset:(CGPoint)offset{
    if (view == nil) view = [UIApplication sharedApplication].keyWindow;
    // 快速显示一个提示信息
    MBProgressHUD *hud = [MBProgressHUD showHUDAddedTo:view animated:YES];
    hud.label.text = message;
    
    //是否设置黑色背景，这两句配合使用
    hud.bezelView.color = [UIColor blackColor];
    hud.contentColor = [UIColor whiteColor];
    hud.margin = 10;
    hud.label.font  = Font(15);
    //    // 再设置模式
    hud.mode = MBProgressHUDModeCustomView;
    
    // 隐藏时候从父控件中移除
    hud.removeFromSuperViewOnHide = YES;
    
    hud.offset = offset;
    // 1秒之后再消失
    
    
    [hud hideAnimated:YES afterDelay:1.0];
    
    return hud;
}

+(void)hideforView:(UIView *)view{
    
    [MBProgressHUD hideHUDForView:view animated:YES];
}
@end
