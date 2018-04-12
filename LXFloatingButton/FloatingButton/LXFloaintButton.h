//
//  LXFloaintButton.h
//  LXFloatingButton
//
//  Created by 漫漫 on 2018/4/12.
//  Copyright © 2018年 漫漫. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface LXFloaintButton : UIButton

/**传入父View*/
@property(nonatomic,weak) UIView *parentView;

/**安全边距，主要是针对有Navbar 以及 tabbar的*/
@property(nonatomic,assign)UIEdgeInsets safeInsets;

@end
