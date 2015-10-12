//
//  Clock.h
//  模块化时钟
//
//  Created by 廖晓飞 on 15/8/7.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>
#import "Hand.h"
#import "Scales.h"


@interface Clock : UIView

- (instancetype)initWithCenterX:(float)x centerY:(float)y radius:(float)radius;
+ (instancetype)clockWithCenterX:(float)x centerY:(float)y radius:(float)radius;

- (void)setClockWithCenterX:(float)x centerY:(float)y radius:(float)radius;
- (void)setTimeWithHour:(float)hour minute:(float)minute second:(float)second;
- (void)setHourHandWithColor:(UIColor *)color length:(float)length thick:(float)thick;
- (void)setMinuteHandWithColor:(UIColor *)color length:(float)length thick:(float)thick;
- (void)setSecondHandWithColor:(UIColor *)color length:(float)length thick:(float)thick;

- (void)setHourScalesWithColor:(UIColor *)color length:(float)length thick:(float)thick;
- (void)setSecondScalesWithColor:(UIColor *)color length:(float)length thick:(float)thick;

- (void)draw;
@end
