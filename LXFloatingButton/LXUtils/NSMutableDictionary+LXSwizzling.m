//
//  NSMutableDictionary+LXSwizzling.m
//  RunttimeLearn
//
//  Created by chenergou on 2017/10/11.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "NSMutableDictionary+LXSwizzling.h"
#import "NSObject+LXSwizzling.h"
@implementation NSMutableDictionary (LXSwizzling)
//+(void)load{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//
//        Class class =   objc_getClass("__NSDictionaryM");
//        [class methodSwizzlingWithOriginalSelector:@selector(setObject:forKey:) bySwizzledSelector:@selector(safeSetObject:forKey:) ];
//
//
//
//    });
//}
//- (void)safeSetObject:(id)obj forKey:(id)aKey {
//
//    if (obj == nil){
//
//        NSLog(@"%s 😊😊😊😊can add nil object into NSMutableArray", __FUNCTION__);
//    }
//    if (obj && aKey) {
//        [self safeSetObject:obj forKey:aKey];
//    }
//
//}
@end
