//
//  LXFloaintButton.m
//  LXFloatingButton
//
//  Created by 漫漫 on 2018/4/12.
//  Copyright © 2018年 漫漫. All rights reserved.
//

#import "LXFloaintButton.h"

@implementation LXFloaintButton

-(instancetype)initWithFrame:(CGRect)frame{
    self = [super initWithFrame:frame];
    
    if (self) {
        [self initilize];
    }
    return self;
}
-(instancetype)initWithCoder:(NSCoder *)aDecoder{
    self = [super initWithCoder:aDecoder];
    if (self) {
        [self initilize];

    }
    return self;
}
-(void)initilize{
    
    self.safeInsets = UIEdgeInsetsMake(0, 0, 0, 0);
    //添加手势
    UIPanGestureRecognizer * panGestureRecognizer = [[UIPanGestureRecognizer alloc] initWithTarget:self action:@selector(doMoveAction:)];
    [self addGestureRecognizer:panGestureRecognizer];

   
}
-(void)setParentView:(UIView *)parentView{
    _parentView = parentView;
}
#pragma mark - 手势方法
- (void)doMoveAction:(UIPanGestureRecognizer *)recognizer
{
    //1、手势在self.view坐标系中移动的位置
    CGPoint translation = [recognizer translationInView:self.parentView];
    CGPoint newCenter = CGPointMake(recognizer.view.center.x + translation.x,
                                    recognizer.view.center.y + translation.y);
    
    //2、限制屏幕范围：
    
    //上边界的限制
    newCenter.y = MAX(recognizer.view.frame.size.height/2 + self.safeInsets.top, newCenter.y);
    
    //下边界的限制
    newCenter.y = MIN(self.parentView.height - self.safeInsets.bottom- recognizer.view.frame.size.height/2, newCenter.y);
    
    //左边界的限制
    newCenter.x = MAX(recognizer.view.frame.size.width/2, newCenter.x);
    
     //右边界的限制
    newCenter.x = MIN(self.parentView.width - recognizer.view.frame.size.width/2,newCenter.x);
    
    //设置中心点范围
    recognizer.view.center = newCenter;
    //3、将手势坐标点归0、否则会累加
    [recognizer setTranslation:CGPointZero inView:self.parentView];
}


@end
