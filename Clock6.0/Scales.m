//
//  Scales.m
//  Clock
//
//  Created by 廖晓飞 on 15/8/6.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import "Scales.h"
#import "Tools.h"
#import "Shape.h"

@interface Scales()
@property (nonatomic) float length;         // 长度
@property (nonatomic) float thick;          // 粗细
@property (nonatomic) UIColor *color;       // 颜色
@property (nonatomic) int count;            // 数量
@property (nonatomic) float startAngle;     // 起始角度
@property (nonatomic) float endAngle;       // 结束角度
@end

@implementation Scales

- (instancetype)initWithCount:(int)count
{
    return [self initWithCount:count thick:2];
}
+ (instancetype)scalesWithCount:(int)count
{
    return [[self alloc] initWithCount:count];
}

- (instancetype)initWithCount:(int)count thick:(float)thick
{
    return [self initWithCount:count thick:thick length:10];
}

+ (instancetype)scalesWithCount:(int)count thick:(float)thick
{
    return [[self alloc] initWithCount:count thick:thick];
}

- (instancetype)initWithCount:(int)count thick:(float)thick length:(float)length
{
    return [self initWithCount:count thick:thick length:length color:[UIColor blackColor]];
}

+ (instancetype)scalesWithCount:(int)count thick:(float)thick length:(float)length
{
    return [[self alloc] initWithCount:count thick:thick length:length];
}

- (instancetype)initWithCount:(int)count thick:(float)thick length:(float)length color:(UIColor *)color
{
    if (self = [super init]) {
        _length = length;
        _thick = thick;
        _color = color;
        _count = count;
        _startAngle = 0;
        _endAngle = 360;
    }
    return self;
}

+ (instancetype)scalesWithCount:(int)count thick:(float)thick length:(float)length color:(UIColor *)color
{
    return [[self alloc] initWithCount:count thick:thick length:length color:color];
}

- (void)setScalesWithCount:(float)count thick:(float)thick length:(float)length color:(UIColor *)color
{
    self.count = count;
    self.thick = thick;
    self.length = length;
    self.color = color;
}

- (void)setStartAngle:(float)startAngle
{
    _startAngle = startAngle;
    _endAngle = 360;
}

- (void)setEndAngle:(float)endAngle
{
    _startAngle = 0;
    _endAngle = endAngle;
}

- (void)setStartAngle:(float)startAngle endAngle:(float)endAngle
{
    _startAngle = startAngle;
    _endAngle = endAngle;
}

- (void)drawAt:(CGPoint)center radius:(float)radius
{
    for (int scaleIndex = 0; scaleIndex < self.count; scaleIndex++)
    {
        float scaleAngle = 360.0 / self.count; // 刻度间的角度
        
        if ((scaleIndex + 1) * scaleAngle >= _startAngle && (scaleIndex + 1) * scaleAngle <= _endAngle)
        {
            CGPoint startPoint = [Tools getPointByIndex:scaleIndex center:center length:radius - self.length count:self.count];

            CGPoint endPoint = [Tools getPointByIndex:scaleIndex center:center length:radius count:self.count];
            
            [Shape drawLineWithStartPoint:startPoint endPoint:endPoint color:self.color thick:self.thick];
        }
        
    }
}


@end
