//
//  RealTimeClock.h
//  Clock6.0
//
//  Created by 廖晓飞 on 15/8/22.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import "Clock.h"
#import "ClockEngine.h"

@interface RealTimeClock : Clock<ClockEngineDelegate>

- (void)startWork;
- (void)pause;
@end
