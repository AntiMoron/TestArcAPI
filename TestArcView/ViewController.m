//
//  ViewController.m
//  TestArcView
//
//  Created by GaoBoyuan on 2017/12/14.
//  Copyright © 2017年 AntiMoron. All rights reserved.
//

#import "ViewController.h"
#import "TestArcView.h"

@interface ViewController ()

@property(nonatomic, strong) TestView* aView;

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    self.aView = [[TestView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    [self.aView startAnimation];
    [self.view addSubview:self.aView];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
