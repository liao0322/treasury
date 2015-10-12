//
//  HandInfo.h
//  Clock
//
//  Created by 廖晓飞 on 15/8/4.
//  Copyright (c) 2015年 zzit. All rights reserved.
//

#import <Foundation/Foundation.h>
#import <UIKit/UIKit.h>

@interface HandInfo : NSObject
@property (nonatomic) float length;     // 长度
@property (nonatomic) float thick;      // 粗细
@property (nonatomic) UIColor *color;   // 颜色
@property (nonatomic) float angle;      // 角度
@property (nonatomic) CGPoint startPoint;   // 起点
@property (nonatomic) CGPoint endPoint;     // 端点

/**
 *  构造方法
 *
 *  @param length 指针长度
 *  @param thick  指针粗细
 *  @param angle  指针角度
 *  @param color  指针颜色
 */
- (instancetype)initWithLength:(float)length thick:(float)thick color:(UIColor *)color;
+ (instancetype)handInfoWithLength:(float)length thick:(float)thick color:(UIColor *)color;
@end
