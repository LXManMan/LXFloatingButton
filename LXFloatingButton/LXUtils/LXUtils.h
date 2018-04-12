//
//  LXUtils.h
//  LXTestPod
//
//  Created by chenergou on 2017/11/8.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#ifndef LXUtils_h
#define LXUtils_h



#define LX_KeyWindow [UIApplication sharedApplication].keyWindow

#define LXColor(r, g, b, a) [UIColor colorWithRed:(r)/255.0 green:(g)/255.0 blue:(b)/255.0 alpha:a]

#define LXRandomColor LXColor(arc4random_uniform(256), arc4random_uniform(256), arc4random_uniform(256),1)

#define LXCurrentVersion  [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleShortVersionString"]

#define LXDisplayName  [[NSBundle mainBundle] objectForInfoDictionaryKey:@"CFBundleDisplayName"]


#define WS(weakSelf)  __weak __typeof(&*self)weakSelf = self;

#define LXNotificationCenter [NSNotificationCenter defaultCenter]
#define LXUserDefaults     [NSUserDefaults standardUserDefaults]



//自定义 log
#ifdef DEBUG
#define NSLog(format, ...) NSLog((@"[%@] [Line %d] " format), [[[NSString stringWithFormat:@"%s", __PRETTY_FUNCTION__] componentsSeparatedByString:@"["][1] componentsSeparatedByString:@"]"][0], __LINE__, ##__VA_ARGS__)
#else
#define NSLog(...)
#endif

#import "NSString+Extension.h"
#import "UIView+Frame.h"
#import "UIView+LX_Frame.h"
#import "UIImage+LXImage.h"
#import "LXCustomTextView.h"
#import "LXTextView.h"

#import "UIColor+LXExpand.h"
#import "UIButton+LXExpandBtn.h"
#import "UILabel+LXLabel.h"
#import "UILabel+LXVerticalStyle.h"
#import "UIImage+LXQRCode.h"
#import "UIView+LXCornerdious.h"
#import "UIView+Toast.h"
#import "UIWindow+LXCurrentViewController.h"
#import "NSObject+LXHud.h"
#endif /* LXUtils_h */
