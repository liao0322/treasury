//
//  ClockEngineDelegate.h
//  Clock6.0
//
//  Created by 廖晓飞 on 15/8/22.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#ifndef Clock6_0_ClockEngineDelegate_h
#define Clock6_0_ClockEngineDelegate_h

@protocol ClockEngineDelegate <NSObject>


- (void)clockEngineReachWithHour:(float)hour minute:(float)minute second:(float)second;
@end
#endif
