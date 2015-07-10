//
//  CustomPush.h
//  iBeaconCardServer
//
//  Created by Jarvis on 15/1/19.
//  Copyright (c) 2015年 Jarvis. All rights reserved.
//

#import <UIKit/UIKit.h>

@protocol CJCustomPushObserver <NSObject>

@optional

- (void)onReciveObject:(id)object;

@end

@interface CJCustomPush : UIStoryboardSegue

+ (instancetype)sharedInstance;

- (void)addObserver:(id <CJCustomPushObserver>)observer;

- (void)presentFromController:(UIViewController *)fromController ToController:(UIViewController *)destController;

- (void)dismissViewController:(UIViewController *)controller withObject:(id)object;

- (void)dismissViewController:(UIViewController *)controller;

@end