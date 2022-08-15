//
//  screenRotatingManager.h
//  rotating
//
//  Created by liuchunhao on 2018/9/27.
//  Copyright © 2018年 liuch. All rights reserved.
/*
 
 UIInterfaceOrientationUnknown
 设备的朝向不能确定。
 
 UIInterfaceOrientationPortrait
 该设备处于竖屏模式，设备保持直立，底部的Home键。
 
 UIInterfaceOrientationPortraitUpsideDown
 该设备处于竖屏模式，但上下颠倒，设备保持直立，顶部的Home键。
 
 UIInterfaceOrientationLandscapeLeft
 设备处于横向模式，设备保持直立，右侧Home键。
 
 UIInterfaceOrientationLandscapeRight
 该设备处于横向模式，设备保持直立，左侧Home键。
 
 */

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

/**
 * 屏幕旋转方向
 */
typedef NS_ENUM(NSUInteger,screenOrientationType) {
    screenOrientationTypePortrait            = 0,    // 底部Home键
//    screenOrientationTypePortraitUpsideDown  = 1,    // 顶部Home键
    screenOrientationTypeLandscapeLeft       = 2,    // 右侧Home键
    screenOrientationTypeLandscapeRight      = 3,    // 左侧Home键
} NS_ENUM_AVAILABLE_IOS(9_0) __TVOS_PROHIBITED;


@interface screenRotatingManager : NSObject


+ (void)screenRotating:(screenOrientationType)rotatingType;

@end
