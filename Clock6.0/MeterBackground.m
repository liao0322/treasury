//
//  MeterBackground.m
//  Clock
//
//  Created by 廖晓飞 on 15/8/6.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import "MeterBackground.h"
@interface MeterBackground()
@property (nonatomic) CGPoint center;
@property (nonatomic) float radius;
@end

@implementation MeterBackground

- (instancetype)initWithCenter:(CGPoint)center radius:(float)radius
{
    if (self = [super init]) {
        _center = center;
        _radius = radius;
    }
    return self;
}
+ (instancetype)meterBackgroundWithCenter:(CGPoint)center radius:(float)radius
{
    return [[self alloc] initWithCenter:center radius:radius];
}

- (void)draw
{
    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextAddArc(context, self.center.x, self.center.y, self.radius + 10, 0, 360, 0);
    CGContextSetLineWidth(context, 1);
    CGContextStrokePath(context);

}
@end
