//
//  Hand.h
//  Clock
//
//  Created by 廖晓飞 on 15/8/5.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import "HandInfo.h"
#import "Tools.h"

@interface Hand : NSObject

/**
 *  通过id和长度创建指针
 *
 *  @param length 指针长度
 *  @param hid    指针id
 */
- (instancetype)initWithLength:(float)length;
+ (instancetype)handWithLength:(float)length;

/**
 *  通过id、长度和粗细创建指针
 *
 *  @param length 长度
 *  @param thick  粗细
 *  @param hid    id
 */
- (instancetype)initWithLength:(float)length thick:(float)thick;
+ (instancetype)handWithLength:(float)length thick:(float)thick;

/**
 *  通过id、长度、粗细和颜色创建指针
 *
 *  @param length 长度
 *  @param thick  粗细
 *  @param color  颜色
 *  @param hid    id
 */
- (instancetype)initWithLength:(float)length thick:(float)thick color:(UIColor *)color;
+ (instancetype)handWithLength:(float)length thick:(float)thick color:(UIColor *)color;

- (void)setHandWithLength:(float)length thick:(float)thick color:(UIColor *)color;
- (float)getLength;
/**
 *  让指针旋转指定的角度
 *
 *  @param angle 角度
 */
- (void)rotateHandAngle:(float)angle;

/**
 *  让指针旋转到指定的角度
 *
 *  @param angle 角度
 */
- (void)rotateHandToAngle:(float)angle;

/**
 *  指定一个点，从该点开始画指针
 *
 *  @param startPoint 起点
 */
- (void)drawAt:(CGPoint)startPoint;
@end
