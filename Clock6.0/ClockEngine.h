//
//  ClockEngine.h
//  Clock6.0
//
//  Created by 廖晓飞 on 15/8/22.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "ClockEngineDelegate.h"

@interface ClockEngine : NSObject

@property (nonatomic, weak) id<ClockEngineDelegate> delegate;

- (void)startWork;
- (void)pause;
@end
