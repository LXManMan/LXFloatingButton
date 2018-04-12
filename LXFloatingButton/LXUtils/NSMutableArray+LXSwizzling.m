//
//  NSMutableArray+LXSwizzling.m
//  RunttimeLearn
//
//  Created by zhongzhi on 2017/7/27.
//  Copyright © 2017年 漫漫. All rights reserved.
//

#import "NSMutableArray+LXSwizzling.h"
#import "NSObject+LXSwizzling.h"
@implementation NSMutableArray (LXSwizzling)
//+(void)load{
//    static dispatch_once_t onceToken;
//    dispatch_once(&onceToken, ^{
//        
//     Class class =   objc_getClass("__NSArrayM");
//        [class methodSwizzlingWithOriginalSelector:@selector(removeObject:) bySwizzledSelector:@selector(safeRemoveObject:) ];
//        
//        [class methodSwizzlingWithOriginalSelector:@selector(addObject:) bySwizzledSelector:@selector(safeAddObject:)];
//        
//        [class methodSwizzlingWithOriginalSelector:@selector(removeObjectAtIndex:) bySwizzledSelector:@selector(safeRemoveObjectAtIndex:)];
//        
//        [class methodSwizzlingWithOriginalSelector:@selector(insertObject:atIndex:) bySwizzledSelector:@selector(safeInsertObject:atIndex:)];
//        
//        [class methodSwizzlingWithOriginalSelector:@selector(objectAtIndex:) bySwizzledSelector:@selector(safeObjectAtIndex:)];
//     
//    });
//}
//- (void)safeAddObject:(id)obj
//{
//    if (obj == nil){
//        
//        NSLog(@"%s 😊😊😊😊can add nil object into NSMutableArray", __FUNCTION__);
//        
//    } else {
//        
//        [self safeAddObject:obj];
//    }
//}
//- (void)safeRemoveObject:(id)obj {
//    
//    if (obj == nil) {
//        
//        NSLog(@"%s 😊😊😊call -removeObject:, but argument obj is nil", __FUNCTION__);
//        
//        return;
//    }
//    [self safeRemoveObject:obj];
//}
//- (void)safeInsertObject:(id)anObject atIndex:(NSUInteger)index {
//    
//    if (anObject == nil) {
//        
//        NSLog(@"%s 😊😊😊😊can't insert nil into NSMutableArray", __FUNCTION__);
//        
//    } else if (index > self.count) {
//        
//        NSLog(@"%s 😊😊😊index is invalid", __FUNCTION__);
//        
//    } else {
//        
//        [self safeInsertObject:anObject atIndex:index];
//        
//      }
//}
//- (id)safeObjectAtIndex:(NSUInteger)index {
//    
//    if (self.count == 0) {
//        
//        NSLog(@"%s 😊😊😊can't get any object from an empty array", __FUNCTION__);
//        
//        return nil;
//        
//    } if (index > self.count) {
//        
//        NSLog(@"%s 😊😊😊index out of bounds in array", __FUNCTION__);
//        
//        return nil;
//    }
//    return  [self safeObjectAtIndex:index];
//}
//- (void)safeRemoveObjectAtIndex:(NSUInteger)index {
//    
//    if (self.count <= 0) {
//        
//        NSLog(@"%s 😊😊😊can't get any object from an empty array",__FUNCTION__);
//        
//        return;
//        
//        
//    } if (index >= self.count) {
//        
//        
//        NSLog(@"%s 😊😊😊index out of bound", __FUNCTION__);
//       
//        
//        return;
//    }
//    
//    [self safeRemoveObjectAtIndex:index]; }
//

@end
