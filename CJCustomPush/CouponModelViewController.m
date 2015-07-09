//
//  CouponModelViewController.m
//  iBeaconCardServer
//
//  Created by Jarvis on 15/1/19.
//  Copyright (c) 2015年 Jarvis. All rights reserved.
//

#import "CouponModelViewController.h"
#import "CJCustomPush.h"

@interface CouponModelViewController ()<UIViewControllerTransitioningDelegate>

@end

@implementation CouponModelViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view.
    
    self.transitioningDelegate = self;
}

- (void)viewWillAppear:(BOOL)animated
{
    [super viewWillAppear:animated];
}

- (void)viewWillDisappear:(BOOL)animated {
    [super viewWillDisappear:animated];
}

- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}

- (IBAction)onCancel:(id)sender {
    [[CJCustomPush sharedInstance] dismissViewController:self withObject:@(0)];
}

- (IBAction)onConfirm:(id)sender {
    [[CJCustomPush sharedInstance] dismissViewController:self withObject:@(1)];
}


@end
