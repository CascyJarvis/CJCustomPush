//
//  ViewController.m
//  CJCustomPush
//
//  Created by Jarvis on 15/7/6.
//  Copyright (c) 2015年 Jarvis. All rights reserved.
//

#import "ViewController.h"
#import "CJCustomPush.h"
#import "PresentingAnimator.h"
#import "DismissingAnimator.h"
#import "CouponModelViewController.h"
// Notification Key
#define kVerifySuccessNotification      @"AQVerifySuccessNotification"
#define kVerifyFailureNotification      @"AQVerifyFailureNotification"
@interface ViewController ()<UIViewControllerTransitioningDelegate , CJCustomPushObserver>

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onPush:(id)sender {
    
    CouponModelViewController * destController = [[CouponModelViewController alloc] initWithNibName:@"CouponModelViewController" bundle:nil];
    destController.transitioningDelegate = self;
    [[CJCustomPush sharedInstance] addObserver:self];
    [[CJCustomPush sharedInstance] presentFromController:self ToController:destController];
}

- (void)onReciveObject:(id)object
{
    NSLog(@"On Receive: %@" , object);
}

@end
