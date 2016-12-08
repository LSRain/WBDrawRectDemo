//
//  ViewController.m
//  WBDrawRectDemo
//
//  Created by WangBiao on 2016/12/8.
//  Copyright © 2016年 lsrain. All rights reserved.
//

#import "ViewController.h"
#import "WBPaintView.h"

@interface ViewController ()

@end

@implementation ViewController

- (void)viewDidLoad {
    [super viewDidLoad];
    // Do any additional setup after loading the view, typically from a nib.
    WBPaintView *view = [[WBPaintView alloc] initWithFrame:CGRectMake(0, 0, 300, 300)];
    view.center = self.view.center;
    view.backgroundColor = [UIColor blueColor];
    
    [self.view addSubview:view];
}


- (void)didReceiveMemoryWarning {
    [super didReceiveMemoryWarning];
    // Dispose of any resources that can be recreated.
}


@end
