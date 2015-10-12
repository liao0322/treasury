//
//  ClockEngine.m
//  Clock6.0
//
//  Created by 廖晓飞 on 15/8/22.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import "ClockEngine.h"

@implementation ClockEngine
{
    NSTimer *_timer;
}

- (NSDateComponents *)getDateComponents
{
    NSCalendar *calendar = [NSCalendar currentCalendar];
    
    unsigned unitFlags = NSCalendarUnitYear | NSCalendarUnitMonth |
    NSCalendarUnitDay | NSCalendarUnitHour | NSCalendarUnitMinute | NSCalendarUnitSecond | NSCalendarUnitWeekOfMonth | NSCalendarUnitWeekOfYear | NSCalendarUnitNanosecond;
    
    return [calendar components:unitFlags fromDate:[NSDate date]];
}

- (void)startWork
{
    _timer = [NSTimer scheduledTimerWithTimeInterval:1 target:self selector:@selector(onTime) userInfo:nil repeats:YES];
}

- (void)pause
{
    [_timer invalidate];
}

- (void)onTime
{
    NSDateComponents *components = [self getDateComponents];
    NSInteger hour = components.hour;
    NSInteger minute = components.minute;
    NSInteger second = components.second;
    NSInteger nanoSecond = components.nanosecond;
    float newSecond = second + nanoSecond * 0.000000001;
    
    if ([self.delegate respondsToSelector:@selector(clockEngineReachWithHour:minute:second:)])
    {
        [self.delegate clockEngineReachWithHour:hour minute:minute second:second];
    }
}
@end
