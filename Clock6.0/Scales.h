//
//  Scales.h
//  Clock
//
//  Created by 廖晓飞 on 15/8/6.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface Scales : NSObject
/**
 *  通过数量创建刻度
 *
 *  @param count 刻度数量
 */
- (instancetype)initWithCount:(int)count;
+ (instancetype)scalesWithCount:(int)count;

/**
 *  通过数量和粗细创建刻度
 *
 *  @param count 数量
 *  @param thick 粗细
 */
- (instancetype)initWithCount:(int)count thick:(float)thick;
+ (instancetype)scalesWithCount:(int)count thick:(float)thick;


/**
 *   通过数量、粗细和长度创建刻度
 *
 *  @param count  数量
 *  @param thick  粗细
 *  @param length 长度
 */
- (instancetype)initWithCount:(int)count thick:(float)thick length:(float)length;
+ (instancetype)scalesWithCount:(int)count thick:(float)thick length:(float)length;

/**
 *  通过数量、粗细、长度和颜色创建刻度
 *
 *  @param count  数量
 *  @param thick  粗细
 *  @param length 长度
 *  @param color  颜色
 */
- (instancetype)initWithCount:(int)count thick:(float)thick length:(float)length color:(UIColor *)color;
+ (instancetype)scalesWithCount:(int)count thick:(float)thick length:(float)length color:(UIColor *)color;

- (void)setScalesWithCount:(float)count thick:(float)thick length:(float)length color:(UIColor *)color;

- (void)setStartAngle:(float)startAngle;
- (void)setEndAngle:(float)endAngle;
- (void)setStartAngle:(float)startAngle endAngle:(float)endAngle;

/**
 *  画刻度
 *
 *  @param center 中心点
 *  @param radius 半径
 */
- (void)drawAt:(CGPoint)center radius:(float)radius;
@end
