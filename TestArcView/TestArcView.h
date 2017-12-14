//
//  TestArcView.h
//  TestArcView
//
//  Created by GaoBoyuan on 2017/12/14.
//  Copyright © 2017年 AntiMoron. All rights reserved.
//

#import <UIKit/UIKit.h>

@interface TestView : UIView

@property(nonatomic, strong) CADisplayLink* displayLink;

@property(nonatomic, assign) CGFloat arc;
/**
 *  Callback on completion.
 */
@property(nonatomic, copy) void(^onCompletion)(void);

-(void) startAnimation;

@end
