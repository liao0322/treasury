//
//  MeterBackground.h
//  Clock
//
//  Created by 廖晓飞 on 15/8/6.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface MeterBackground : NSObject
- (instancetype)initWithCenter:(CGPoint)center radius:(float)radius;
+ (instancetype)meterBackgroundWithCenter:(CGPoint)center radius:(float)radius;

- (void)draw;

@end
