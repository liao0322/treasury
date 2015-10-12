//
//  HandInfo.m
//  Clock
//
//  Created by 廖晓飞 on 15/8/4.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import "HandInfo.h"

@implementation HandInfo
- (instancetype)init
{
    if (self = [super init]) {
        _length = 0;
        _thick = 0;
        _color = nil;
        _angle = 0;
        _startPoint = CGPointMake(0, 0);
        _endPoint = CGPointMake(0, 0);
        
    }
    return self;
}

- (instancetype)initWithLength:(float)length thick:(float)thick color:(UIColor *)color
{
    if (self = [super init]) {
        _length = length;
        _thick = thick;
        _color = color;
    }
    return self;

}
+ (instancetype)handInfoWithLength:(float)length thick:(float)thick color:(UIColor *)color
{
    return [[self alloc] initWithLength:length thick:thick color:color];
}
@end
