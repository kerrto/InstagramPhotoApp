//
//  DismissDetailTransition.m
//  Photo Bombers
//
//  Created by Kerry Toonen on 2016-05-31.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "DismissDetailTransition.h"
#import <UIKit/UIKit.h>

@implementation DismissDetailTransition

-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.3;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *detail = [transitionContext viewControllerForKey:UITransitionContextFromViewControllerKey];
    
 
    
    [UIView animateWithDuration:0.3 animations:^{
        detail.view.alpha = 0.0;
    } completion:^(BOOL finished) {
        [detail.view removeFromSuperview];
        [transitionContext completeTransition:YES];
    }];
}
@end
