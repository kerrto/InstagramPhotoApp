//
//  PresentDetailTransition.m
//  Photo Bombers
//
//  Created by Kerry Toonen on 2016-05-31.
//  Copyright © 2016 Kerry Toonen. All rights reserved.
//

#import "PresentDetailTransition.h"

@implementation PresentDetailTransition


-(NSTimeInterval)transitionDuration:(id<UIViewControllerContextTransitioning>)transitionContext {
    return 0.3;
}

-(void)animateTransition:(id<UIViewControllerContextTransitioning>)transitionContext {
    UIViewController *detail = [transitionContext viewControllerForKey:UITransitionContextToViewControllerKey];
    
    UIView *containerView = [transitionContext containerView];
    
    CGRect frame = containerView.bounds;
    frame.origin.y += 20.0;
    frame.size.height -=20.0;
    
    detail.view.frame = frame;
    
    
    detail.view.alpha = 0;
    detail.view.frame = containerView.bounds;
    [containerView addSubview:detail.view];
    
    [UIView animateWithDuration:0.3 animations:^{
        detail.view.alpha = 1.0;
    } completion:^(BOOL finished) {
        [transitionContext completeTransition:YES];
    }];
}

@end
