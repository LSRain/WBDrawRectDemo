//
//  WBPaintView.m
//  WBDrawRectDemo
//
//  Created by WangBiao on 2016/12/8.
//  Copyright © 2016年 lsrain. All rights reserved.
//

#import "WBPaintView.h"

@implementation WBPaintView

- (void)drawRect:(CGRect)rect {

    /// 绘图开关
    /// - 0: 矩形
    /// - 1: 椭圆
    /// - 2: 弧形
    NSInteger drawSwith = 2;
    CGContextRef cxt = UIGraphicsGetCurrentContext();
    switch (drawSwith) {
        case 0:
            CGContextAddRect(cxt, CGRectMake(50, 50, 100, 100));
            CGContextDrawPath(cxt, kCGPathStroke);
            break;
        case 1:
            CGContextAddEllipseInRect(cxt, CGRectMake(50, 50, 100, 150));
            CGContextDrawPath(cxt, kCGPathStroke);
            break;
        case 2:
            CGContextAddArc(cxt, 100, 100, 60, 0, M_PI_4, 1);
            CGContextDrawPath(cxt, kCGPathStroke);
            break;
        default:
            break;
    }
}

@end
