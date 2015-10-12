//
//  Tools.m
//  ClockWithTeam
//
//  Created by 廖晓飞 on 15/7/31.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import "Tools.h"


VHTime VHTimeMake(CGFloat hour, CGFloat minute, CGFloat second)
{
    VHTime time;
    time.hour = hour;
    time.minute = minute;
    time.second = second;
    return time;
}

// 求秒针的角度
float getSecondHandAngle(float second)
{
    return second / 60 * 360;
}

// 求分针的角度
float getMinuteHandAngle(float minute, float second)
{
    float s = 6.0 / 60 * second;
    return minute / 60.0 * 360 + s;
}

// 求时针的角度
float getHourHandAngle(float hour, float minute, float second)
{
    float h = hour * 30;
    float m = 30.0 / 60 * minute;
    float s = 30.0 / 3600 * second;
    return h + m + s;
}

// 角度转狐度
float angleToFoxdegyee(float angle)
{
    return 2 * PI / 360 * angle;
}

float getA(float r, float foxdegyee)
{
    return r * sinf(foxdegyee);
}

float getB(float r, float foxdegyee)
{
    return r * cosf(foxdegyee);
}


@implementation Tools

+ (CGPoint)getHourHandEndPointByTime:(VHTime)time center:(CGPoint)center length:(float)length
{
    float hour = time.hour;
    float minute = time.minute;
    float second = time.second;
    
    float angle = getHourHandAngle(hour, minute, second);
    return [Tools getPointByAngle:angle center:center length:length];
    
}
+ (CGPoint)getMinuteHandEndPointByTime:(VHTime)time center:(CGPoint)center length:(float)length
{
    float minute = time.minute;
    float second = time.second;
    
    float angle = getMinuteHandAngle(minute, second);
    return [Tools getPointByAngle:angle center:center length:length];
    
}
+ (CGPoint)getSecondHandEndPointByTime:(VHTime)time center:(CGPoint)center length:(float)length
{
    float second = time.second;
    
    float angle = getSecondHandAngle(second);
    return [Tools getPointByAngle:angle center:center length:length];
}

+ (CGPoint)getPointByIndex:(int)index center:(CGPoint)center length:(CGFloat)length count:(int)count
{
    float angle = 360 / count;
    float foxdegyee = angleToFoxdegyee((index + 1) * angle);
    float a = getA(length, foxdegyee);
    float b = getB(length, foxdegyee);
    return CGPointMake(center.x + a, center.y - b);
}

+ (CGPoint)getPointByAngle:(float)angle center:(CGPoint)center length:(float)length
{
    float foxdegyee = angleToFoxdegyee(angle);
    float a = getA(length, foxdegyee);
    float b = getB(length, foxdegyee);
    CGPoint point = CGPointMake(center.x + a, center.y - b);
    return point;
}
@end
