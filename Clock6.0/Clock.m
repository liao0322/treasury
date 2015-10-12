//
//  Clock.m
//  模块化时钟
//
//  Created by 廖晓飞 on 15/8/7.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import "Clock.h"
@interface Clock()

@property (nonatomic, strong) Hand *hourHand;
@property (nonatomic, strong) Hand *minuteHand;
@property (nonatomic, strong) Hand *secondHand;
@property (nonatomic, strong) Scales *secondScales;
@property (nonatomic, strong) Scales *hourScales;
@property (nonatomic, assign) CGPoint clockCenter;
@property (nonatomic, assign) float radius;
@end


@implementation Clock
- (instancetype)initWithCoder:(NSCoder *)coder
{
    self = [super initWithCoder:coder];
    if (self) {
        
        // 中点
        float centerX = self.frame.size.width * 0.5;
        float centerY = self.frame.size.height * 0.5;
        
        // 半径
        float r = self.frame.size.width * 0.45;
        
        [self setClockWithCenterX:centerX centerY:centerY radius:r];
        
        _hourHand = [Hand handWithLength:r - 60 thick:5 color:[UIColor whiteColor]];
        
        _minuteHand = [Hand handWithLength:r - 40 thick:3 color:[UIColor whiteColor]];
        
        _secondHand = [Hand handWithLength:r - 20 thick:1 color:[UIColor redColor]];
        
        _secondScales = [Scales scalesWithCount:60 thick:2 length:5 color:[UIColor whiteColor]];
        _hourScales = [Scales scalesWithCount:12 thick:4 length:10 color:[UIColor redColor]];
    }
    return self;
}


- (instancetype)initWithCenterX:(float)x centerY:(float)y radius:(float)radius
{
    if (self = [super init]) {
        
        self.clockCenter = CGPointMake(x, y);
        _radius = radius;
        _hourHand = [Hand handWithLength:55 thick:5 color:[UIColor whiteColor]];
        
        _minuteHand = [Hand handWithLength:65 thick:3 color:[UIColor whiteColor]];
        
        _secondHand = [Hand handWithLength:75 thick:1 color:[UIColor redColor]];
        
        _secondScales = [Scales scalesWithCount:60 thick:2 length:5 color:[UIColor whiteColor]];
        
        _hourScales = [Scales scalesWithCount:12 thick:4 length:10 color:[UIColor redColor]];
        
    }
    return self;
}
+ (instancetype)clockWithCenterX:(float)x centerY:(float)y radius:(float)radius
{
    return [[self alloc] initWithCenterX:x centerY:y radius:radius];
}

- (void)setTimeWithHour:(float)hour minute:(float)minute second:(float)second
{
    [self.hourHand rotateHandToAngle:getHourHandAngle(hour, minute, second)];
    [self.minuteHand rotateHandToAngle:getMinuteHandAngle(minute, second)];
    [self.secondHand rotateHandToAngle:getSecondHandAngle(second)];
}
- (void)setHourHandWithColor:(UIColor *)color length:(float)length thick:(float)thick
{
    [self.hourHand setHandWithLength:length thick:thick color:color];
}
- (void)setMinuteHandWithColor:(UIColor *)color length:(float)length thick:(float)thick
{
    [self.minuteHand setHandWithLength:length thick:thick color:color];
}
- (void)setSecondHandWithColor:(UIColor *)color length:(float)length thick:(float)thick
{
    [self.secondHand setHandWithLength:length thick:thick color:color];
}

- (void)setHourScalesWithColor:(UIColor *)color length:(float)length thick:(float)thick
{
    [self.hourScales setScalesWithCount:12 thick:thick length:length color:color];
}
- (void)setSecondScalesWithColor:(UIColor *)color length:(float)length thick:(float)thick
{
    [self.secondScales setScalesWithCount:60 thick:thick length:length color:color];
}
- (void)setClockWithCenterX:(float)x centerY:(float)y radius:(float)radius
{
    self.clockCenter = CGPointMake(x, y);
    self.radius = radius;
    
}
- (void)draw
{
    [_hourHand drawAt:self.clockCenter];
    [_minuteHand drawAt:self.clockCenter];
    [_secondHand drawAt:self.clockCenter];
    [_secondScales drawAt:self.clockCenter radius:self.radius];
    [_hourScales drawAt:self.clockCenter radius:self.radius];

}

- (void)drawRect:(CGRect)rect
{
    [self draw];
}
@end
