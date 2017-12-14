//
//  TestArcView.m
//  TestArcView
//
//  Created by GaoBoyuan on 2017/12/14.
//  Copyright © 2017年 AntiMoron. All rights reserved.
//

#import "TestArcView.h"

@implementation TestView

-(instancetype) initWithFrame:(CGRect)frame {
    self = [super initWithFrame:frame];
    self.backgroundColor = UIColor.clearColor;
    self.displayLink = [CADisplayLink displayLinkWithTarget:self selector:@selector(updateAnimation)];
    [self.displayLink addToRunLoop:NSRunLoop.mainRunLoop forMode:NSRunLoopCommonModes];
    self.displayLink.paused = YES;
    return self;
}

-(void) dealloc {
    [self.displayLink removeFromRunLoop:NSRunLoop.mainRunLoop forMode:NSRunLoopCommonModes];
    self.displayLink = nil;
}

-(void) startAnimation {
    self.arc = 0;
    self.displayLink.paused = NO;
}

-(void) updateAnimation {
    [self setNeedsDisplay];
    self.arc += M_PI / 30;
    if(self.arc >= M_PI * 2) {
        self.arc = 0;
    }
}

-(void)drawRect:(CGRect)rect {
    CGContextRef context = UIGraphicsGetCurrentContext();
    UIGraphicsPushContext(context);
    CGContextSetFillColorWithColor(context, UIColor.blackColor.CGColor);
    CGPoint centerPoint = CGPointMake(rect.size.width * 0.5, rect.size.height * 0.5);
    CGContextAddArc(context, centerPoint.x, centerPoint.y,
                    10 , 0, self.arc, NO);
    CGContextFillPath(context);
    UIGraphicsPopContext();
}

@end


