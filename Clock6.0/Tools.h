//
//  Tools.h
//  ClockWithTeam
//
//  Created by 廖晓飞 on 15/7/31.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#define PI 3.1415926
typedef struct
{
    CGFloat hour;
    CGFloat minute;
    CGFloat second;
    
} VHTime;

VHTime VHTimeMake(CGFloat hour, CGFloat minute, CGFloat second);

// 求秒针的角度
float getSecondHandAngle(float second);

// 求分针的角度
float getMinuteHandAngle(float minute, float second);

// 求时针的角度
float getHourHandAngle(float hour, float minute, float second);

@interface Tools : NSObject
/**
 *  求时针的端点
 *
 *  @param time   时间
 *  @param center 中心点
 *  @param length 时针长度
 */
+ (CGPoint)getHourHandEndPointByTime:(VHTime)time center:(CGPoint)center length:(float)length;

/**
 *  求分针的端点
 *
 *  @param time   时间
 *  @param center 中心点
 *  @param length 分针长度
 */
+ (CGPoint)getMinuteHandEndPointByTime:(VHTime)time center:(CGPoint)center length:(float)length;

/**
 *  求秒针的端点
 *
 *  @param time   时间
 *  @param center 中心点
 *  @param length 秒针长度
 */
+ (CGPoint)getSecondHandEndPointByTime:(VHTime)time center:(CGPoint)center length:(float)length;

/**
 *  求每一个刻度的端点
 *
 *  @param index  刻度的索引
 *  @param center 中心点
 *  @param length 中点到端点的长度
 *  @param count 刻度的数量
 */
+ (CGPoint)getPointByIndex:(int)index center:(CGPoint)center length:(CGFloat)length count:(int)count;

/**
 *  通过角度求指针的端点
 *
 *  @param angle  指针的角度
 *  @param center 指针的起点
 *  @param length 指针的长度
 */
+ (CGPoint)getPointByAngle:(float)angle center:(CGPoint)center length:(float)length;
@end
