//
//  twoViewController.m
//  rotating
//
//  Created by liuchunhao on 2018/9/21.
//  Copyright © 2018年 liuch. All rights reserved.
//

#import "twoViewController.h"
#import "AppDelegate.h"
#import "screenRotatingManager.h"

@interface twoViewController ()

@property (nonatomic, assign) BOOL fullscreen;

@end

@implementation twoViewController


- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    AppDelegate * appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    // 是否允许旋转
    appDelegate.allowRotation = NO;
    
    // 强制竖屏
    [screenRotatingManager screenRotating:(screenOrientationTypePortrait)];
}



- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor blueColor];
    self.navigationItem.title = @"强制竖屏";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"测试旋转" style:(UIBarButtonItemStylePlain) target:self action:@selector(rightBarButtonItemAction)];
}

- (void)rightBarButtonItemAction {
    
    if (self.fullscreen) {
        self.fullscreen = NO;
        
        [screenRotatingManager screenRotating:(screenOrientationTypeLandscapeRight)];
        
    }else{
        self.fullscreen = YES;
        
        [screenRotatingManager screenRotating:(screenOrientationTypePortrait)];
        
    }
}


#pragma mark - || 监测屏幕旋转 ||
//  ios8系统以上
- (void)viewWillTransitionToSize:(CGSize)size withTransitionCoordinator:(id<UIViewControllerTransitionCoordinator>)coordinator
{
    [super viewWillTransitionToSize:size withTransitionCoordinator:coordinator];
    [coordinator animateAlongsideTransition:^(id<UIViewControllerTransitionCoordinatorContext> context) {

        CGSize screen = [UIScreen mainScreen].bounds.size;

        if(screen.width > screen.height){
            NSLog(@"横屏");
        }else{
            NSLog(@"竖屏");
        }
    } completion:^(id<UIViewControllerTransitionCoordinatorContext> context) {
        NSLog(@"旋转完成 ！！！");
    }];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
