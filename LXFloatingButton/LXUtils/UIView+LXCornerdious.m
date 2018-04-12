//
//  UIView+LXCornerdious.m
//  testDemo
//
//  Created by 漫漫 on 2018/4/4.
//  Copyright © 2018年 刘新新. All rights reserved.
//

#import "UIView+LXCornerdious.h"

@implementation UIView (LXCornerdious)
-(void)setLXCornerdious:(CGFloat)cornerdious{
    self.layer.cornerRadius = cornerdious;
    
    self.layer.masksToBounds = YES;
}

-(void)setLXBorderWidth:(CGFloat)borderWidth borderColor:(UIColor *)borderColor{
    self.layer.borderWidth = borderWidth;
    self.layer.borderColor = borderColor.CGColor;
}
@end
