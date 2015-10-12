//
//  RealTimeClock.m
//  Clock6.0
//
//  Created by 廖晓飞 on 15/8/22.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import "RealTimeClock.h"


@implementation RealTimeClock
{
    ClockEngine *_engine;
}

- (instancetype)initWithCoder:(NSCoder *)coder
{
    if (self = [super initWithCoder:coder]) {
        _engine = [[ClockEngine alloc] init];
        _engine.delegate = self;
        [self startWork];
    }
    return self;
}

- (void)clockEngineReachWithHour:(float)hour minute:(float)minute second:(float)second
{
    [self setTimeWithHour:hour minute:minute second:second];
    [self setNeedsDisplay];
}

- (void)startWork
{
    [_engine startWork];
}

- (void)pause
{
    [_engine pause];
}

@end
