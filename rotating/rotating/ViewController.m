//
//  ViewController.m
//  rotating
//
//  Created by liuchunhao on 2018/9/21.
//  Copyright © 2018年 liuch. All rights reserved.
//

#import "ViewController.h"
#import "AppDelegate.h"
#import "twoViewController.h"
#import "screenRotatingManager.h"

@interface ViewController ()

@property (nonatomic, assign) BOOL fullscreen;

@end

@implementation ViewController

- (void)viewWillAppear:(BOOL)animated {
    [super viewWillAppear:animated];
    
    AppDelegate * appDelegate = (AppDelegate *)[UIApplication sharedApplication].delegate;
    // 是否允许旋转
    appDelegate.allowRotation = YES;
}


- (void)viewDidLoad {
    [super viewDidLoad];
    self.view.backgroundColor = [UIColor orangeColor];
    self.navigationItem.title = @"随意旋转";
    
    self.navigationItem.rightBarButtonItem = [[UIBarButtonItem alloc] initWithTitle:@"旋转" style:(UIBarButtonItemStylePlain) target:self action:@selector(rightBarButtonItemAction)];
}

- (void)rightBarButtonItemAction {
    
    if (self.fullscreen) {
        self.fullscreen = NO;
        
        [screenRotatingManager screenRotating:(screenOrientationTypeLandscapeLeft)];
        
    }else{
        self.fullscreen = YES;
        
        [screenRotatingManager screenRotating:(screenOrientationTypeLandscapeRight)];
    }
}



- (void)touchesBegan:(NSSet<UITouch *> *)touches withEvent:(UIEvent *)event {
    
    twoViewController *tVC = [twoViewController new];
    [self.navigationController pushViewController:tVC animated:YES];
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
