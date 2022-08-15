//
//  AppDelegate.m
//  rotating
//
//  Created by liuchunhao on 2018/9/21.
//  Copyright © 2018年 liuch. All rights reserved.
//

#import "AppDelegate.h"

@interface AppDelegate ()

@end

@implementation AppDelegate


- (BOOL)application:(UIApplication *)application didFinishLaunchingWithOptions:(NSDictionary *)launchOptions {
    return YES;
}

// ios6系统以上
- (UIInterfaceOrientationMask)application:(UIApplication *)application supportedInterfaceOrientationsForWindow:(nullable UIWindow *)window {
    if (_allowRotation == YES) { // 支持旋转
        return (UIInterfaceOrientationMaskAll); // 任意方向
    }else{ // 不允许旋转
        return (UIInterfaceOrientationMaskPortrait);
    }
}


- (void)applicationWillResignActive:(UIApplication *)application {
}


- (void)applicationDidEnterBackground:(UIApplication *)application {
}


- (void)applicationWillEnterForeground:(UIApplication *)application {
}


- (void)applicationDidBecomeActive:(UIApplication *)application {
}


- (void)applicationWillTerminate:(UIApplication *)application {
}


@end
