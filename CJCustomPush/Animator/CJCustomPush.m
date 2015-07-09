//
//  CustomPush.m
//  iBeaconCardServer
//
//  Created by Jarvis on 15/1/19.
//  Copyright (c) 2015年 Jarvis. All rights reserved.
//

#import "CJCustomPush.h"
#import "PresentingAnimator.h"
#import "DismissingAnimator.h"
@interface CJCustomPush() <UIViewControllerTransitioningDelegate>
@property (nonatomic , assign) id<CJCustomPushObserver> observer;
@property (nonatomic , assign) id<UIViewControllerTransitioningDelegate> delegate;
@end

@implementation CJCustomPush

+ (instancetype)sharedInstance
{
    static id sharedInstance = nil;
    static dispatch_once_t onceToken;
    dispatch_once(&onceToken, ^{
        sharedInstance = [[self alloc] init];
    });
    return  sharedInstance;
}


- (void)addObserver:(id <CJCustomPushObserver>)observer
{
    if (observer) {
        self.observer = observer;
    }
}

- (void)removeObserver
{
    self.observer = nil;
}

#pragma mark - UIViewControllerTransitioningDelegate

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForPresentedController:(UIViewController *)presented
                                                                  presentingController:(UIViewController *)presenting
                                                                      sourceController:(UIViewController *)source
{
    return [PresentingAnimator new];
}

- (id<UIViewControllerAnimatedTransitioning>)animationControllerForDismissedController:(UIViewController *)dismissed
{
    return [DismissingAnimator new];
}

- (void)presentFromController:(UIViewController *)fromController
                 ToController:(UIViewController *)destController
{
    destController.transitioningDelegate = self;
    destController.modalPresentationStyle = UIModalPresentationCustom;
    [fromController.navigationController presentViewController:destController animated:YES completion:nil];
}

- (void)dismissViewController:(UIViewController *)controller withObject:(id)object
{
    if ([self.observer respondsToSelector:@selector(onReciveObject:)] &&
        object) {
        [self.observer onReciveObject:object];
        [self dismissViewController:controller];
    }
}

- (void)dismissViewController:(UIViewController *)controller
{
    controller.transitioningDelegate = self;
    [controller dismissViewControllerAnimated:YES completion:nil];
}

@end
