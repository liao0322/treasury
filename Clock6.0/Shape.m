//
//  Shape.m
//  模块化时钟
//
//  Created by 廖晓飞 on 15/8/8.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import "Shape.h"

@implementation Shape
+ (void)drawLineWithStartPoint:(CGPoint)sp endPoint:(CGPoint)ep color:(UIColor *)color thick:(float)thick
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(context, [color CGColor]);
    
    CGContextSetLineWidth(context, thick);
    
    CGPoint pts[] = {sp, ep};
    CGContextStrokeLineSegments(context, pts, 2);
}

+ (void)drawCircleWithRaidus:(float)radius centerX:(float)x centerY:(float)y
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextAddArc(context, x, y, radius + 10, 0, 360, 0);
    CGContextSetLineWidth(context, 1);
    CGContextStrokePath(context);
}


@end
