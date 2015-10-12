//
//  Hand.m
//  Clock
//
//  Created by 廖晓飞 on 15/8/5.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import "Hand.h"
@interface Hand()
@property (nonatomic) HandInfo *handInfo;
@end

@implementation Hand

- (instancetype)initWithLength:(float)length
{
    return [self initWithLength:length thick:1];
}

+ (instancetype)handWithLength:(float)length
{
    return [[Hand alloc] initWithLength:length];
}

- (instancetype)initWithLength:(float)length thick:(float)thick
{
    return [self initWithLength:length thick:thick color:[UIColor blackColor]];
}

+ (instancetype)handWithLength:(float)length thick:(float)thick
{
    return [[self alloc] initWithLength:length thick:thick];
}

- (instancetype)initWithLength:(float)length thick:(float)thick color:(UIColor *)color
{

    if (self = [super init])
    {
        _handInfo = [[HandInfo alloc] init];
        _handInfo.length = length;
        _handInfo.thick = thick;
        _handInfo.color = color;
        _handInfo.startPoint = CGPointMake(0, 0);
        _handInfo.angle = 0;
    }
    return self;
}


+ (instancetype)handWithLength:(float)length thick:(float)thick color:(UIColor *)color
{
    return [[self alloc] initWithLength:length thick:thick color:color];
}

- (void)setHandWithLength:(float)length thick:(float)thick color:(UIColor *)color
{
    self.handInfo.length = length;
    self.handInfo.thick = thick;
    self.handInfo.color = color;
}

- (float)getLength
{
    return self.handInfo.length;
}

- (void)rotateHandAngle:(float)angle
{
    self.handInfo.angle += angle;
}

- (void)rotateHandToAngle:(float)angle
{
    self.handInfo.angle = angle;
}

- (void)drawAt:(CGPoint)startPoint
{

    CGContextRef context = UIGraphicsGetCurrentContext();
    
    CGContextSetStrokeColorWithColor(context, [self.handInfo.color CGColor]);
    
    CGContextSetLineWidth(context, self.handInfo.thick);
//     设置端点样式
    CGContextSetLineCap(context, kCGLineCapRound);
    CGPoint endPoint = [Tools getPointByAngle:self.handInfo.angle center:startPoint length:self.handInfo.length];
    
    CGPoint pts[] = {startPoint, endPoint};

//    CGContextAddArc(context, pts[0].x, pts[0].y, self.handInfo.length, 100, 150, 0);
    
    CGContextStrokeLineSegments(context, pts, 2);
    
    
}
@end
