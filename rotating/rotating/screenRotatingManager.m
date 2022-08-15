//
//  screenRotatingManager.m
//  rotating
//
//  Created by liuchunhao on 2018/9/27.
//  Copyright © 2018年 liuch. All rights reserved.
//

#import "screenRotatingManager.h"

@implementation screenRotatingManager

+ (void)screenRotating:(screenOrientationType)rotatingType {
    
//    NSNumber *resetOrientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationUnknown];
//    [[UIDevice currentDevice] setValue:resetOrientationTarget forKey:@"orientation"];
    
    switch (rotatingType) {
        case screenOrientationTypePortrait:
        {
            NSLog(@"底部Home键");
            NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationPortrait];
            [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
        }
            break;
//        case screenOrientationTypePortraitUpsideDown:
//        {
//            NSLog(@"顶部Home键");
//            NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationPortraitUpsideDown];
//            [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
//        }
//            break;
        case screenOrientationTypeLandscapeLeft:
        {
            NSLog(@"右侧Home键");
            NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeLeft];
            [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
        }
            break;
        case screenOrientationTypeLandscapeRight:
        {
            NSLog(@"左侧Home键");
            NSNumber *orientationTarget = [NSNumber numberWithInt:UIInterfaceOrientationLandscapeRight];
            [[UIDevice currentDevice] setValue:orientationTarget forKey:@"orientation"];
        }
            break;
        default:
            break;
    }
}





@end
